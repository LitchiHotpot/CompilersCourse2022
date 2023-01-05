#include "Unit.h"
#include "Type.h"
#include <vector>
extern FILE* yyout;

void Unit::insertFunc(Function *f)
{
    func_list.push_back(f);
}

void Unit::removeFunc(Function *func)
{
    func_list.erase(std::find(func_list.begin(), func_list.end(), func));
}

void Unit::insertGlo(SymbolEntry *se,ExprNode *nu){
    glo_list.push_back(se);
    glonum_list.push_back(nu);
}

void Unit::output() const
{ 
    int i=0;
    for(auto se : glo_list){
        ExprNode* num = glonum_list[i];
        if(num==nullptr){
            fprintf(yyout, "%s = global %s %d, align 4\n", se->toStr().c_str(),
            se->getType()->toStr().c_str(),
            0);
        }
        else{
            Operand *nu_op=num->getOperand();
            fprintf(yyout, "%s = global %s %s, align 4\n", se->toStr().c_str(),
            se->getType()->toStr().c_str(),
            nu_op->toStr().c_str());
        }
        i++;
    }
    for (auto &func : func_list){
        func->output();
    }
    fprintf(yyout, "declare void @putint(i32)\n");
    fprintf(yyout, "declare i32 @getint()\n");
    fprintf(yyout, "declare void @putch(i32)\n");
}

void Unit::genMachineCode(MachineUnit* munit) 
{
    AsmBuilder* builder = new AsmBuilder();
    builder->setUnit(munit);
    //if(func_list.empty()) printf("no func\n");
    for (auto &func : func_list)
        func->genMachineCode(builder);
}

Unit::~Unit()
{
    for(auto &func:func_list)
        delete func;
}


