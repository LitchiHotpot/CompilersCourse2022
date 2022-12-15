#include "Ast.h"
#include "SymbolTable.h"
#include "Unit.h"
#include "Instruction.h"
#include "IRBuilder.h"
#include <string>
#include "Type.h"
#include <queue>

extern Unit unit;
extern FILE *yyout;
int Node::counter = 0;
IRBuilder* Node::builder = nullptr;

Node::Node()
{
    seq = counter++;
}

void Node::backPatch(std::vector<Instruction*> &list, BasicBlock*bb)
{
    for(auto &inst:list)
    {
        if(inst->isCond()){
            //std::cout<<"1"<<std::endl;
            dynamic_cast<CondBrInstruction*>(inst)->setTrueBranch(bb);}
        else if(inst->isUncond()){
            //std::cout<<"2"<<std::endl;
            dynamic_cast<UncondBrInstruction*>(inst)->setBranch(bb);}
    }
}

std::vector<Instruction*> Node::merge(std::vector<Instruction*> &list1, std::vector<Instruction*> &list2)
{
    std::vector<Instruction*> res(list1);
    res.insert(res.end(), list2.begin(), list2.end());
    return res;
}

void Ast::genCode(Unit *unit)
{
    IRBuilder *builder = new IRBuilder(unit);
    Node::setIRBuilder(builder);
    root->genCode();
}

void FunctionDef::genCode()
{
    Unit *unit = builder->getUnit();
    Function *func;
    if(paraList->getList().empty()){
        //std::cout<<"no para func add"<<std::endl;
        func = new Function(unit, se, nullptr);}
    else
        func = new Function(unit, se, paraList);
    
    BasicBlock *entry = func->getEntry();
    // set the insert point to the entry basicblock of this function.
    builder->setInsertBB(entry);
    
    //paralist
    if(!paraList->getList().empty()){
        //std::cout<<"entry para handle"<<std::endl;
        ParaList *pa_list=this->paraList;
        std::queue<SymbolEntry*> expr_list=pa_list->getList();
        FunctionType *functype=dynamic_cast<FunctionType *>(se->getType());
        std::vector<Type*> para_type=functype->getParaType();
        int i=0;
        while(!expr_list.empty()){
            IdentifierSymbolEntry *se_pa = dynamic_cast<IdentifierSymbolEntry *>(expr_list.front());
            Instruction *alloca;
            Instruction *store;
            Operand *addr;
            SymbolEntry *addr_se;
            Type* type;
            type = new PointerType(para_type[i]);
            //std::cout<<para_type[i]->toStr<<std::endl;
            addr_se = new TemporarySymbolEntry(type, SymbolTable::getLabel());
            addr = new Operand(addr_se);
            alloca = new AllocaInstruction(addr, se_pa);
            Operand *temp1 = new Operand(se_pa); 
            Operand *temp = new Operand(func->gettemplist()[i]);
            store=new StoreInstruction(addr, temp, entry);                  
            //entry->insertFront(store);    
            entry->insertFront(alloca);                              
            se_pa->setAddr(addr);              
            expr_list.pop(); 
            i++;
            //std::cout<<"add 1 para"<<std::endl;         
        }
    }
    stmt->genCode();

    /**
     * Construct control flow graph. You need do set successors and predecessors for each basic block.
     * Todo
    */
    for (auto block = func->begin(); block != func->end(); block++) {
        //获取该块的最后一条指令
        Instruction* i = (*block)->begin();
        Instruction* last = (*block)->rbegin();
        while (i != last) {
            if (i->isCond() || i->isUncond()) {
                (*block)->remove(i);
            }
            i = i->getNext();
        }
        if (last->isCond()) {
            BasicBlock *truebranch, *falsebranch;
            truebranch =
                dynamic_cast<CondBrInstruction*>(last)->getTrueBranch();
            falsebranch =
                dynamic_cast<CondBrInstruction*>(last)->getFalseBranch();
            if (truebranch->empty()) {
                new RetInstruction(nullptr, truebranch);

            } else if (falsebranch->empty()) {
                new RetInstruction(nullptr, falsebranch);
            }
            (*block)->addSucc(truebranch);
            (*block)->addSucc(falsebranch);
            truebranch->addPred(*block);
            falsebranch->addPred(*block);
        } else if (last->isUncond()) {  //无条件跳转指令可获取跳转的目标块
            BasicBlock* dst =
                dynamic_cast<UncondBrInstruction*>(last)->getBranch();
            (*block)->addSucc(dst);
            dst->addPred(*block);
            if (dst->empty()) {
                if (((FunctionType*)(se->getType()))->getRetType() ==
                    TypeSystem::intType) {
                    new RetInstruction(new Operand(new ConstantSymbolEntry(
                                           TypeSystem::intType, 0)),
                                       dst);
                }  else if (((FunctionType*)(se->getType()))->getRetType() ==
                           TypeSystem::voidType) {
                    new RetInstruction(nullptr, dst);
                }
            }

        }
        //最后一条语句不是返回以及跳转
        else if (!last->isRet()) {
            if (((FunctionType*)(se->getType()))->getRetType() ==
                TypeSystem::voidType) {
                new RetInstruction(nullptr, *block);
            }
        }
    }
    // 如果已经有ret了，删除后面的指令
    for (auto it = func->begin(); it != func->end(); it++) {
        auto block = *it;
        bool flag = false;
        for (auto i = block->begin(); i != block->end(); i = i->getNext()) {
            if (flag) {
                block->remove(i);
                delete i;
                continue;
            }
            if (i->isRet())
                flag = true;
        }
        if (flag) {
            while (block->succ_begin() != block->succ_end()) {
                auto b = *(block->succ_begin());
                block->removeSucc(b);
                b->removePred(block);
            }
        }
    }
    while (true) {
        bool flag = false;
        for (auto it = func->begin(); it != func->end(); it++) {
            auto block = *it;
            if (block == func->getEntry())
                continue;
            if (block->getNumOfPred() == 0) {
                delete block;
                flag = true;
                break;
            }
        }
        if (!flag)
            break;
    }
   
}

void BinaryExpr::genCode()
{
    BasicBlock *bb = builder->getInsertBB();
    Function *func = bb->getParent();
    //std::cout<<func<<std::endl;
    if (op == AND)
    {
        //std::cout<<"1"<<std::endl;
        BasicBlock *trueBB = new BasicBlock(func);  // if the result of lhs is true, jump to the trueBB.
        expr1->genCode();
        backPatch(expr1->trueList(), trueBB);
        builder->setInsertBB(trueBB);               // set the insert point to the trueBB so that intructions generated by expr2 will be inserted into it.
        expr2->genCode();
        true_list = expr2->trueList();
        false_list = merge(expr1->falseList(), expr2->falseList());
    }
    else if(op == OR)
    {
        BasicBlock *trueBB = new BasicBlock(func);  // if the result of lhs is true, jump to the trueBB.
        expr1->genCode();
        backPatch(expr1->falseList(), trueBB);
        builder->setInsertBB(trueBB);               // set the insert point to the trueBB so that intructions generated by expr2 will be inserted into it.
        expr2->genCode();
        true_list = merge(expr1->trueList(), expr2->trueList());
        false_list=expr2->falseList();
    }
    else if(op == LESS || op == EQUAL || op == NOTEQUAL || op == LESSEQ || op == MORE || op == MOREEQ)
    {
        expr1->genCode();
        expr2->genCode();
        Operand *src1 = expr1->getOperand();
        Operand *src2 = expr2->getOperand();
        int opcode=-1;
        switch (op)
        {
        case EQUAL:
            opcode = CmpInstruction::E;
            break;
        case NOTEQUAL:
            opcode = CmpInstruction::NE;
            break;
        case LESS:
            opcode = CmpInstruction::L;
            break;
        case LESSEQ:
            opcode = CmpInstruction::LE;
            break;
        case MORE:
            opcode = CmpInstruction::G;
            break;
        case MOREEQ:
            opcode = CmpInstruction::GE;
            break;
        }
        new CmpInstruction(opcode, dst, src1, src2, bb);
        BasicBlock *truebb, *falsebb, *tempbb;
        truebb = new BasicBlock(func);
        falsebb = new BasicBlock(func);
        tempbb = new BasicBlock(func);

        true_list.push_back(new CondBrInstruction(truebb, tempbb, dst, bb));

        false_list.push_back(new UncondBrInstruction(falsebb, tempbb));
    }
    else if(op >= ADD && op <= MOD)
    {
        expr1->genCode();
        expr2->genCode();
        Operand *src1 = expr1->getOperand();
        Operand *src2 = expr2->getOperand();
        if(!(src1->getType()==TypeSystem::intType||src1->getType()==TypeSystem::constintType)){
        Operand* temp1 = new Operand(new TemporarySymbolEntry(
            TypeSystem::intType, SymbolTable::getLabel()));
            new ConverInstruction(1,temp1,src1,bb);
            src1=temp1;
            }
        if(!(src2->getType()==TypeSystem::intType||src2->getType()==TypeSystem::constintType)){
        Operand* temp2 = new Operand(new TemporarySymbolEntry(
            TypeSystem::intType, SymbolTable::getLabel()));
            new ConverInstruction(1,temp2,src2,bb);
            src2=temp2;}
        int opcode;
        switch (op)
        {
        case ADD:
            opcode = BinaryInstruction::ADD;
            break;
        case SUB:
            opcode = BinaryInstruction::SUB;
            break;
        case MUL:
            opcode = BinaryInstruction::MUL;
            break;
        case DIV:
            opcode = BinaryInstruction::DIV;
            break;
        case MOD:
            opcode = BinaryInstruction::MOD;
            break;
        }
        new BinaryInstruction(opcode, dst, src1, src2, bb);
        BasicBlock *truebb, *falsebb, *tempbb;
        truebb = new BasicBlock(func);
        falsebb = new BasicBlock(func);
        tempbb = new BasicBlock(func);

        true_list.push_back(new CondBrInstruction(truebb, tempbb, dst, bb));
        false_list.push_back(new UncondBrInstruction(falsebb, tempbb));
    }
}

void Constant::genCode()
{
    // we don't need to generate code.
}

void Id::genCode()
{
    BasicBlock *bb = builder->getInsertBB();
    Operand *addr = dynamic_cast<IdentifierSymbolEntry*>(symbolEntry)->getAddr();
    new LoadInstruction(dst, addr, bb);
}

void IfStmt::genCode()
{
    //std::cout<<"1"<<std::endl;
    Function *func;
    BasicBlock *then_bb, *end_bb;

    func = builder->getInsertBB()->getParent();
    then_bb = new BasicBlock(func);
    end_bb = new BasicBlock(func);

    cond->genCode();
    backPatch(cond->trueList(), then_bb);
    backPatch(cond->falseList(), end_bb);

    builder->setInsertBB(then_bb);
    thenStmt->genCode();
    then_bb = builder->getInsertBB();
    new UncondBrInstruction(end_bb, then_bb);

    builder->setInsertBB(end_bb);
    //std::cout<<"2"<<std::endl;
}

void IfElseStmt::genCode()
{
    Function *func;
    BasicBlock *then_bb, *else_bb, *end_bb;

    func = builder->getInsertBB()->getParent();
    then_bb = new BasicBlock(func);
    else_bb = new BasicBlock(func);
    end_bb = new BasicBlock(func);

    cond->genCode();
    backPatch(cond->trueList(), then_bb);
    backPatch(cond->falseList(), else_bb);


    builder->setInsertBB(then_bb);
    thenStmt->genCode();
    then_bb = builder->getInsertBB();
    new UncondBrInstruction(end_bb, then_bb);

    builder->setInsertBB(else_bb);
    elseStmt->genCode();
    else_bb = builder->getInsertBB();
    new UncondBrInstruction(end_bb, else_bb);

    builder->setInsertBB(end_bb);

}

void CompoundStmt::genCode()
{
    // Todo
    if(stmt!=nullptr)
       stmt->genCode();
}

void SeqNode::genCode()
{
    // Todo
    stmt1->genCode();
    stmt2->genCode();
}

void DeclStmt::genCode()
{
    //std::cout<<"Add Decl!"<<std::endl;
    IDList *idlist_u = this->idlist;
    //if(idlist_u->getList().empty())  std::cout<<"Empty!"<<std::endl;
    while(!idlist_u->getList().empty()){
        IdentifierSymbolEntry *se = dynamic_cast<IdentifierSymbolEntry *>(idlist_u->getList().front());
        if(se->isGlobal())
        {
            //std::cout<<"Add Global!"<<std::endl;
            Operand *addr;
            SymbolEntry *addr_se;
            addr_se = new IdentifierSymbolEntry(*se);
            addr_se->setType(new PointerType(se->getType()));
            addr = new Operand(addr_se);
            se->setAddr(addr);
            unit.insertGlo(se,nullptr);
            idlist_u->popone();
        }
        else if(se->isLocal())
        {
            //std::cout<<"Add Local!"<<se->toStr()<<std::endl;
            Function *func = builder->getInsertBB()->getParent();
            BasicBlock *entry = func->getEntry();
            Instruction *alloca;
            Operand *addr;
            SymbolEntry *addr_se;
            Type *type;
            type = new PointerType(se->getType());
            addr_se = new TemporarySymbolEntry(type, SymbolTable::getLabel());
            addr = new Operand(addr_se);
            alloca = new AllocaInstruction(addr, se);                   // allocate space for local id in function stack.
            entry->insertFront(alloca);                                 // allocate instructions should be inserted into the begin of the entry block.
            se->setAddr(addr);              
            idlist_u->popone();                            // set the addr operand in symbol entry so that we can use it in subsequent code generation.
        }

    //if(idlist_u->getList().empty())  std::cout<<"Empty!"<<std::endl;
    }
}

void ReturnStmt::genCode()
{
    // Todo
    //std::cout<<"return success!"<<std::endl;
    BasicBlock *bb = builder->getInsertBB();
    Operand *src = nullptr;
    if(retValue){
        retValue->genCode();
        src=retValue->getOperand();
    }
    new RetInstruction(src,bb);
}

void AssignStmt::genCode()
{
    BasicBlock *bb = builder->getInsertBB();
    expr->genCode();
    Operand *addr = dynamic_cast<IdentifierSymbolEntry*>(lval->getSymPtr())->getAddr();
    Operand *src = expr->getOperand();
    /***
     * We haven't implemented array yet, the lval can only be ID. So we just store the result of the `expr` to the addr of the id.
     * If you want to implement array, you have to caculate the address first and then store the result into it.
     */
    new StoreInstruction(addr, src, bb);
}


void SingelExpr::genCode()
{
    /*
    class SingelExpr : public ExprNode
{
private:
    int op;
    ExprNode *expr1;
public:
    enum {MIN,NOT,POS};
    SingelExpr(SymbolEntry *se, int op, ExprNode*expr1) : ExprNode(se), op(op), expr1(expr1){};
    void output(int level);
    void typeCheck();
    void genCode();
};
*/
    BasicBlock *bb = builder->getInsertBB();
    Function *func = bb->getParent();
    //std::cout<<func<<std::endl;
    expr1->genCode();
    Operand *src = expr1->getOperand();
    int opcode;
    if(op==MIN){
        //std::cout<<"min"<<std::endl;
        if(!(src->getType()==TypeSystem::intType||src->getType()==TypeSystem::constintType)){
        Operand* temp1 = new Operand(new TemporarySymbolEntry(
            TypeSystem::intType, SymbolTable::getLabel()));
            new ConverInstruction(1,temp1,src,bb);
            src=temp1;
            }
        opcode = SingleInstruction::MIN;
        new SingleInstruction(opcode,dst,src,bb);
        BasicBlock *truebb, *falsebb, *tempbb;
        truebb = new BasicBlock(func);
        falsebb = new BasicBlock(func);
        tempbb = new BasicBlock(func);
        Operand* dst_br = new Operand(new TemporarySymbolEntry(
            TypeSystem::boolType, SymbolTable::getLabel()));
        new CmpInstruction(
            CmpInstruction::G, dst_br, dst,
            new Operand(new ConstantSymbolEntry(TypeSystem::intType, 0)),
            bb);
        true_list.push_back(new CondBrInstruction(truebb, tempbb, dst, bb));
        false_list.push_back(new UncondBrInstruction(falsebb, tempbb));
    }
    else if(op==NOT){
        Operand* temp = new Operand(new TemporarySymbolEntry(
            TypeSystem::boolType, SymbolTable::getLabel()));
        new CmpInstruction(
            CmpInstruction::G, temp, src,
            new Operand(new ConstantSymbolEntry(TypeSystem::intType, 0)),
            bb);
        src = temp;
        opcode = SingleInstruction::NOT;
        new SingleInstruction(opcode,dst,src,bb);
        Operand* temp1 = new Operand(new TemporarySymbolEntry(
                TypeSystem::intType, SymbolTable::getLabel()));
        dst=temp1;
        new ConverInstruction(1,dst,src,bb);
        BasicBlock *truebb, *falsebb, *tempbb;
        truebb = new BasicBlock(func);
        falsebb = new BasicBlock(func);
        tempbb = new BasicBlock(func);
        true_list.push_back(new CondBrInstruction(truebb, tempbb, dst, bb));
        false_list.push_back(new UncondBrInstruction(falsebb, tempbb));
    }
    else if(op==POS){

        Operand* temp1 = new Operand(new TemporarySymbolEntry(
            TypeSystem::boolType, SymbolTable::getLabel()));
         new CmpInstruction(
            CmpInstruction::G, temp1, src,
            new Operand(new ConstantSymbolEntry(TypeSystem::intType, 0)),
            bb);
        
        BasicBlock *truebb, *falsebb, *tempbb;
        truebb = new BasicBlock(func);
        falsebb = new BasicBlock(func);
        tempbb = new BasicBlock(func);
        true_list.push_back(new CondBrInstruction(truebb, tempbb, temp1, bb));
        false_list.push_back(new UncondBrInstruction(falsebb, tempbb));
        dst=src;
    }
    
}

void WhileStmt::genCode()
{   BasicBlock *cond_bb,*stmt_bb,*end_bb,*bb;
    bb = builder->getInsertBB();
    Function *func = builder->getInsertBB()->getParent();
    cond_bb = new BasicBlock(func);
    stmt_bb = new BasicBlock(func) ;
    end_bb = new BasicBlock(func) ;
    this->cond_bb = cond_bb;
    this->end_bb =
    end_bb;
    new UncondBrInstruction(cond_bb, bb);
    builder->setInsertBB(cond_bb);
    cond->genCode();
    backPatch(cond->trueList(), stmt_bb);
    backPatch(cond->falseList(), end_bb);
    builder->setInsertBB(stmt_bb);
    Stmt->genCode();
    stmt_bb = builder->getInsertBB();
    new UncondBrInstruction(cond_bb, stmt_bb);
    builder->setInsertBB(end_bb);

}

void InitStmt::genCode()
{
    BasicBlock *bb = builder->getInsertBB();
    std::queue<SymbolEntry*> *idlist_u = initIDList->getList();
    std::queue<ExprNode*> *nums_u = initIDList->getNums();
    //if(idlist_u->getList().empty())  std::cout<<"Empty List!"<<std::endl;
    while(!idlist_u->empty()){
        IdentifierSymbolEntry *se = dynamic_cast<IdentifierSymbolEntry *>(idlist_u->front());
        ExprNode *nu = nums_u->front();
        if(se->isGlobal())
        {   
            //std::cout<<"Add Global!"<<std::endl;
            Operand *addr;
            SymbolEntry *addr_se;
            addr_se = new IdentifierSymbolEntry(*se);
            addr_se->setType(new PointerType(se->getType()));
            addr = new Operand(addr_se);
            se->setAddr(addr);
            nu->genCode();
            //Operand *src_nu = nu->getOperand();
            //std::cout<<src_nu->toStr()<<std::endl;
            unit.insertGlo(se,nu);
            initIDList->poponese();
            initIDList->poponenu();
        }
        else if(se->isLocal())
        {
            //std::cout<<"Add Local!"<<se->toStr()<<std::endl;
            Function *func = builder->getInsertBB()->getParent();
            BasicBlock *entry = func->getEntry();
            Instruction *alloca;
            Operand *addr;
            SymbolEntry *addr_se;
            Type *type;
            type = new PointerType(se->getType());
            addr_se = new TemporarySymbolEntry(type, SymbolTable::getLabel());
            addr = new Operand(addr_se);
            alloca = new AllocaInstruction(addr, se);                   // allocate space for local id in function stack.
            entry->insertFront(alloca);                                 // allocate instructions should be inserted into the begin of the entry block.
            se->setAddr(addr);
            Operand *src_nu = nu->getOperand();
            nu->genCode();              
            new StoreInstruction(addr, src_nu, bb);
            initIDList->poponese();
            initIDList->poponenu();                           // set the addr operand in symbol entry so that we can use it in subsequent code generation.
        }

    //if(idlist_u->getList().empty())  std::cout<<"Empty!"<<std::endl;
    }
}

void ExprStmt::genCode()
{
    if(expr!=nullptr)
    expr->genCode();
}

void FuncExpr::genCode()
{
    //std::cout<<"1"<<std::endl;
    std::queue<ExprNode*> templist=paraidlist->getList();
    std::vector<Operand*> operands;
    while(!templist.empty()){
        //std::cout<<"1"<<std::endl;
        ExprNode* temp=templist.front();
        temp->genCode();
        operands.push_back(temp->getOperand());
        templist.pop();
    }
    //std::cout<<"1"<<std::endl;
    BasicBlock* bb = builder->getInsertBB();
    //std::cout<<symbolEntry->toStr()<<std::endl;
    new CallInstruction(dst, symbolEntry, operands, bb);
}


//////TYPECHECK////


void Ast::typeCheck()
{
    //fprintf(yyout,"1111");
    if(root != nullptr){
        root->typeCheck();
    }
        
}

void FunctionDef::typeCheck()
{
    if(stmt!=nullptr)
        stmt->typeCheck();
}

void SeqNode::typeCheck()
{
    if(stmt1!=nullptr)
        stmt1->typeCheck();
    if(stmt2!=nullptr)
        stmt2->typeCheck();
}

void SingelExpr::typeCheck()
{
    Type *type = expr1->getSymPtr()->getType();
    if(!type->isInt()){
        fprintf(yyout, "type %s can not be used in singleExpr in line xx",
            type->toStr().c_str());
    }
    symbolEntry->setType(type);
}

void BinaryExpr::typeCheck()
{
    // Todo
    expr1->typeCheck();
    expr2->typeCheck();
    Type *type1 = expr1->getSymPtr()->getType();
    Type *type2 = expr2->getSymPtr()->getType();
    if(type1->isFunc() || type2->isFunc()){
        fprintf(yyout,"111");
        if(((FunctionType*)type1)->getRetType()==TypeSystem::voidType || ((FunctionType*)type2)->getRetType()==TypeSystem::voidType){
            fprintf(stderr, "either of the type %s or %s is void\n",
            type1->toStr().c_str(), type2->toStr().c_str());
        }
        if(type1->isFunc() && type2->isFunc()){
            if(((FunctionType*)type1)->getRetType()!=((FunctionType*)type2)->getRetType()){
            fprintf(stderr, "type %s and %s mismatch in line xx\n",
            type1->toStr().c_str(), type2->toStr().c_str());
            }
        }
        else if(type1->isFunc()){
            if(((FunctionType*)type1)->getRetType()!=type2){
            fprintf(stderr, "type %s and %s mismatch in line xx\n",
            type1->toStr().c_str(), type2->toStr().c_str());
            }
        }
        else if(type2->isFunc()){
        //fprintf(yyout,"222");
        if(((FunctionType*)type2)->getRetType()!=type1){
            fprintf(stderr, "type %s and %s mismatch in line xx\n",
            type1->toStr().c_str(), type2->toStr().c_str());
            }
        }
    }
    else if(type1 != type2){
        fprintf(stderr, "type %s and %s mismatch in line xx\n",
        type1->toStr().c_str(), type2->toStr().c_str());
        //exit(EXIT_FAILURE);
    }
    symbolEntry->setType(type1);
}

void Constant::typeCheck()
{
    // Todo
}

void Id::typeCheck()
{
    // Todo
}

void IfStmt::typeCheck()
{
    // Todo
    cond->typeCheck();
    Type *type = cond->getSymPtr()->getType();
    if(type->isFunc()){
        if(!((FunctionType*)type)->getRetType()->isInt()){
            fprintf(yyout,"type %s is not bool",type->toStr().c_str());
        }
    }
    else if(!type->isInt()){
        fprintf(yyout,"type %s is not bool",type->toStr().c_str());
    }
    thenStmt->typeCheck();
}

void IfElseStmt::typeCheck()
{
    // Todo
    cond->typeCheck();
    Type *type = cond->getSymPtr()->getType();
    if(type->isFunc()){
        if(!((FunctionType*)type)->getRetType()->isInt()){
            fprintf(yyout,"type %s is not bool",type->toStr().c_str());
        }
    }
    else if(!type->isInt()){
        fprintf(yyout,"type %s is not bool",type->toStr().c_str());
    }
    thenStmt->typeCheck();
    elseStmt->typeCheck();
}

void CompoundStmt::typeCheck()
{
    // Todo
    if(stmt!=nullptr)
        stmt->typeCheck();
}

void DeclStmt::typeCheck()
{
    // Todo
}

void ReturnStmt::typeCheck()
{
    // Todo
    retValue->typeCheck();
}

void AssignStmt::typeCheck()
{
    // Todo
    expr->typeCheck();
}

void WhileStmt::typeCheck()
{
    if(cond!=nullptr)
        cond->typeCheck();
    if(Stmt!=nullptr)
        Stmt->typeCheck();
}

void InitStmt::typeCheck()
{

}

void ExprStmt::typeCheck()
{
    expr->typeCheck();
}

void FuncExpr::typeCheck()
{
    
}

void Ast::output()
{
    fprintf(yyout, "program\n");
    if(root != nullptr)
        root->output(4);
}

void SingelExpr::output(int level)
{
    std::string op_str;
    switch(op)
    {
        case POS:
            op_str = "positive";
            break;
        case NOT:
            op_str = "not";
            break;
        case MIN:
            op_str = "minus";
            break;
    }
    fprintf(yyout, "%*cSingelExpr\top: %s\n", level, ' ', op_str.c_str());
    expr1->output(level + 4);
}


void BinaryExpr::output(int level)
{
    std::string op_str;
    switch(op)
    {
        case ADD:
            op_str = "add";
            break;
        case SUB:
            op_str = "sub";
            break;
        case MUL:
            op_str = "mul";
            break;
        case DIV:
            op_str = "div";
            break;
        case MOD:
            op_str = "mod";
            break;     
        case AND:
            op_str = "and";
            break;
        case OR:
            op_str = "or";
            break;
        case LESS:
            op_str = "less";
            break;
        case MORE:
            op_str = "more";
            break; 
        case LESSEQ:
            op_str = "lesseq";
            break;
        case MOREEQ:
            op_str = "moreeq";
            break; 
        case EQUAL:
            op_str = "equal";
            break; 
        case NOTEQUAL:
            op_str = "notequal";
            break; 
    }
    fprintf(yyout, "%*cBinaryExpr\top: %s\n", level, ' ', op_str.c_str());
    expr1->output(level + 4);
    expr2->output(level + 4);
}

void Constant::output(int level)
{
    std::string type, value;
    type = symbolEntry->getType()->toStr();
    value = symbolEntry->toStr();
    fprintf(yyout, "%*cIntegerLiteral\tvalue: %s\ttype: %s\n", level, ' ',
            value.c_str(), type.c_str());
}

void Id::output(int level)
{
    std::string name, type;
    int scope;
    name = symbolEntry->toStr();
    type = symbolEntry->getType()->toStr();
    scope = dynamic_cast<IdentifierSymbolEntry*>(symbolEntry)->getScope();
    fprintf(yyout, "%*cId\tname: %s\tscope: %d\ttype: %s\n", level, ' ',
            name.c_str(), scope, type.c_str());
}

void IDList::output(int level)
{
    std::string name, type;
    int scope;
    while(!this->idlist.empty()){
    	SymbolEntry* se=this->getList().front();
    	name = se->toStr();
   	    type = se->getType()->toStr();
    	scope = dynamic_cast<IdentifierSymbolEntry*>(se)->getScope();
        this->idlist.pop();
    	fprintf(yyout, "%*cId\tname: %s\tscope: %d\ttype: %s\n", level, ' ',
            	name.c_str(), scope, type.c_str());
    }
}

void InitIDList::output(int level)
{
    std::string name, type;
    int scope;
    while(!this->getList()->empty()) {
     SymbolEntry* se = this->idList.front();
     name = se->toStr();
     type = se->getType()->toStr();
     scope = dynamic_cast<IdentifierSymbolEntry*>(se)->getScope();
     this->idList.pop();
     fprintf(yyout, "%*cId\tname: %s\tscope: %d\ttype: %s\n", level, ' ',name.c_str(), scope, type.c_str());
        this->nums.front()->output(level + 4);
        this->nums.pop();
    }
}

void ParaList::output(int level)
{
    std::string name, type;
    int scope;
    while(!this->getList().empty()) {
    	SymbolEntry* se = this->idList.front();
    	name = se->toStr();
    	type = se->getType()->toStr();
    	scope = dynamic_cast<IdentifierSymbolEntry*>(se)->getScope();
    	this->idList.pop();
    	fprintf(yyout, "%*cId\tname: %s\tscope: %d\ttype: %s\n", level, ' ',name.c_str(), scope, type.c_str());
    }
}

void ParaIDList::output(int level)
{
    // std::string name, type;
    // int scope;
    while(!this->getList().empty()) {
    	ExprNode* expr = this->exprlist.front();
    	expr->output(level + 4);
    	this->exprlist.pop();
    }
}

void CompoundStmt::output(int level)
{
    fprintf(yyout, "%*cCompoundStmt\n", level, ' ');
    if(stmt!=nullptr)
    stmt->output(level + 4);
}

void SeqNode::output(int level)
{
    stmt1->output(level);
    stmt2->output(level);
}

void DeclStmt::output(int level)
{
    fprintf(yyout, "%*cDeclStmt\n", level, ' ');
    idlist->output(level + 4);
}

void IfStmt::output(int level)
{
    fprintf(yyout, "%*cIfStmt\n", level, ' ');
    cond->output(level + 4);
    thenStmt->output(level + 4);
}

void IfElseStmt::output(int level)
{
    fprintf(yyout, "%*cIfElseStmt\n", level, ' ');
    cond->output(level + 4);
    thenStmt->output(level + 4);
    elseStmt->output(level + 4);
}

void WhileStmt::output(int level)
{
    fprintf(yyout, "%*cWhileStmt\n", level, ' ');
    cond->output(level + 4);
    Stmt->output(level + 4);
}

void ReturnStmt::output(int level)
{
    fprintf(yyout, "%*cReturnStmt\n", level, ' ');
    if(retValue!=nullptr)
    retValue->output(level + 4);
    if(funcCall!=nullptr)
    funcCall->output(level + 4);
}

void InitStmt::output(int level)
{
    fprintf(yyout, "%*cInitStmt\n", level, ' ');
    initIDList->output(level + 4);
}

void ExprStmt::output(int level)
{
    fprintf(yyout, "%*cExprStmt\n", level, ' ');
    if(expr!=nullptr)
    expr->output(level + 4);
}

void FuncExpr::output(int level)
{
    std::string name, type;
    name = symbolEntry->toStr();
    type = symbolEntry->getType()->toStr();
    fprintf(yyout, "%*cFunctionExpr function name: %s, type: %s\n", level, ' ', 
            name.c_str(), type.c_str());
    if(paraidlist!=nullptr)
    paraidlist->output(level + 4);
}

void AssignStmt::output(int level)
{
    fprintf(yyout, "%*cAssignStmt\n", level, ' ');
    lval->output(level + 4);
    expr->output(level + 4);
}

void FunctionDef::output(int level)
{
    std::string name, type;
    name = se->toStr();
    type = se->getType()->toStr();
    fprintf(yyout, "%*cFunctionDefine function name: %s, type: %s\n", level, ' ', 
            name.c_str(), type.c_str());
    paraList->output(level + 4);
    stmt->output(level + 4);
}
