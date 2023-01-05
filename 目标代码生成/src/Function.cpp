#include "Function.h"
#include "Unit.h"
#include "Type.h"
#include <list>

extern FILE* yyout;

Function::Function(Unit *u, SymbolEntry *s, ParaList *p)
{
    u->insertFunc(this);
    entry = new BasicBlock(this);
    sym_ptr = s;
    parent = u;
    if(p){
        para_list=p;
        FunctionType* funcType = dynamic_cast<FunctionType*>(sym_ptr->getType());
        std::vector<Type *> paratype=funcType->getParaType();
        std::vector<Type *>::iterator iter;
        for(iter = paratype.begin(); iter != paratype.end(); iter++){
            TemporarySymbolEntry *temp = new TemporarySymbolEntry((*iter),SymbolTable::getLabel());
            templist.push_back(temp);
        }
    }
    else
        para_list=nullptr;
   
}

/*Function::~Function()
{
    auto delete_list = block_list;
    for (auto &i : delete_list)
        delete i;
    parent->removeFunc(this);
}*/

// remove the basicblock bb from its block_list.
void Function::remove(BasicBlock *bb)
{
    block_list.erase(std::find(block_list.begin(), block_list.end(), bb));
}

void Function::output() const
{
    
    FunctionType* funcType = dynamic_cast<FunctionType*>(sym_ptr->getType());
    Type *retType = funcType->getRetType();
    fprintf(yyout, "define %s %s(", retType->toStr().c_str(), sym_ptr->toStr().c_str());
    if(para_list){
        //std::cout<<"handle"<<std::endl;
        std::vector<Type *> paratype=funcType->getParaType();
        std::queue<SymbolEntry*> theparalist = para_list->getList();
        std::vector<Type *>::iterator iter;
        int i=0;
        for(iter = paratype.begin(); iter != paratype.end(); iter++){
            if(iter + 1 == paratype.end())
                fprintf(yyout, "%s %s", (*iter)->toStr().c_str(),templist[i]->toStr().c_str());
            else
                fprintf(yyout, "%s %s,", (*iter)->toStr().c_str(),templist[i]->toStr().c_str());
            theparalist.pop();
            i++;
        }
    }
    fprintf(yyout, ") {\n");
    std::set<BasicBlock *> v;
    std::list<BasicBlock *> q;
    q.push_back(entry);
    v.insert(entry);
    while (!q.empty())
    {
        auto bb = q.front();
        q.pop_front();
        bb->output();
        for (auto succ = bb->succ_begin(); succ != bb->succ_end(); succ++)
        {
            if (v.find(*succ) == v.end())
            {
                v.insert(*succ);
                q.push_back(*succ);
            }
        }
    }
    fprintf(yyout, "}\n");
}

void Function::genMachineCode(AsmBuilder* builder) 
{
    auto cur_unit = builder->getUnit();
    auto cur_func = new MachineFunction(cur_unit, this->sym_ptr);
    builder->setFunction(cur_func);
    std::map<BasicBlock*, MachineBlock*> map;
    for(auto block : block_list)
    {
        block->genMachineCode(builder);
        map[block] = builder->getBlock();
    }
    // Add pred and succ for every block
    for(auto block : block_list)
    {
        auto mblock = map[block];
        for (auto pred = block->pred_begin(); pred != block->pred_end(); pred++)
            mblock->addPred(map[*pred]);
        for (auto succ = block->succ_begin(); succ != block->succ_end(); succ++)
            mblock->addSucc(map[*succ]);
    }
    cur_unit->InsertFunc(cur_func);

}
