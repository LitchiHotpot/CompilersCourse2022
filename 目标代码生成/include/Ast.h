#ifndef __AST_H__
#define __AST_H__

#include "SymbolTable.h"
#include "Type.h"
#include <fstream>
#include <queue>
#include "Operand.h"

class SymbolEntry;
class Unit;
class Function;
class BasicBlock;
class Instruction;
class IRBuilder;

class Node
{
private:
    static int counter;
    int seq;
protected:
    std::vector<Instruction*> true_list;
    std::vector<Instruction*> false_list;
    static IRBuilder *builder;
    void backPatch(std::vector<Instruction*> &list, BasicBlock*bb);
    std::vector<Instruction*> merge(std::vector<Instruction*> &list1, std::vector<Instruction*> &list2);

public:
    Node();
    int getSeq() const {return seq;};
    static void setIRBuilder(IRBuilder*ib) {builder = ib;};
    virtual void output(int level) = 0;
    virtual void typeCheck() = 0;
    virtual void genCode() = 0;
    std::vector<Instruction*>& trueList() {return true_list;}
    std::vector<Instruction*>& falseList() {return false_list;}
};

class ExprNode : public Node
{
protected:
    SymbolEntry *symbolEntry;
    Operand *dst;   // The result of the subtree is stored into dst.
public:
    ExprNode(SymbolEntry *symbolEntry) : symbolEntry(symbolEntry){};
    Operand* getOperand() {return dst;};
    SymbolEntry* getSymPtr() {return symbolEntry;};
    void genCode(){};
    virtual void output(int level) {};
    virtual void typeCheck() {};
};

class SingelExpr : public ExprNode
{
private:
    int op;
    ExprNode *expr1;
public:
    enum {MIN,NOT,POS};
    SingelExpr(SymbolEntry *se, int op, ExprNode*expr1) : ExprNode(se), op(op), expr1(expr1){dst = new Operand(se);};
    void output(int level);
    void typeCheck();
    void genCode();
};

class BinaryExpr : public ExprNode
{
private:
    int op;
    ExprNode *expr1, *expr2;
public:
    enum {ADD, SUB, MUL, DIV, MOD ,AND, OR, LESS, MORE, NOTEQUAL, EQUAL, LESSEQ, MOREEQ};
    BinaryExpr(SymbolEntry *se, int op, ExprNode*expr1, ExprNode*expr2) : ExprNode(se), op(op), expr1(expr1), expr2(expr2){dst = new Operand(se);};
    void output(int level);
    void typeCheck();
    void genCode();
};

class Constant : public ExprNode
{
public:
    Constant(SymbolEntry *se) : ExprNode(se){dst = new Operand(se);};
    void output(int level);
    void typeCheck();
    void genCode();
};

class Id : public ExprNode
{
public:
    Id(SymbolEntry *se) : ExprNode(se){SymbolEntry *temp = new TemporarySymbolEntry(se->getType(), SymbolTable::getLabel()); dst = new Operand(temp);};
    void output(int level);
    void typeCheck();
    void genCode();
};

class IDList
{
private:
    std::queue<SymbolEntry*> idlist;
public:
    IDList(std::queue<SymbolEntry*> idlist) : idlist(idlist) {};
    SymbolEntry* getSymPtr() {return 0;};
    void popone(){idlist.pop();};
    void output(int level);
    std::queue<SymbolEntry*> getList() {return this->idlist;};
    void setType(Type *type) {
        std::queue<SymbolEntry*> idl;
        while(!this->idlist.empty()){
    	SymbolEntry* se=this->idlist.front();
    	se->setType(type);
        this->idlist.pop();
        idl.push(se);
        }
        this->idlist=idl;
    };
};

class ParaList
{
private:
    std::queue<SymbolEntry*> idList;
public:
    ParaList(std::queue<SymbolEntry*> idList) : idList(idList){};
    ParaList() {};
    void output(int level);
    std::queue<SymbolEntry*> getList() {return this->idList;};
};

class StmtNode : public Node
{};

class CompoundStmt : public StmtNode
{
private:
    StmtNode *stmt;
public:
    CompoundStmt() {};
    CompoundStmt(StmtNode *stmt) : stmt(stmt) {};
    void output(int level);
    void typeCheck();
    void genCode();
};

class SeqNode : public StmtNode
{
private:
    StmtNode *stmt1, *stmt2;
public:
    SeqNode(StmtNode *stmt1, StmtNode *stmt2) : stmt1(stmt1), stmt2(stmt2){};
    void output(int level);
    void typeCheck();
    void genCode();
};

class DeclStmt : public StmtNode
{
private:
    IDList *idlist;
public:
    DeclStmt(IDList *idlist) : idlist(idlist){};
    void output(int level);
    void typeCheck();
    void genCode();
};

class IfStmt : public StmtNode
{
private:
    ExprNode *cond;
    StmtNode *thenStmt;
public:
    IfStmt(ExprNode *cond, StmtNode *thenStmt) : cond(cond), thenStmt(thenStmt){};
    void output(int level);
    void typeCheck();
    void genCode();
};

class IfElseStmt : public StmtNode
{
private:
    ExprNode *cond;
    StmtNode *thenStmt;
    StmtNode *elseStmt;
public:
    IfElseStmt(ExprNode *cond, StmtNode *thenStmt, StmtNode *elseStmt) : cond(cond), thenStmt(thenStmt), elseStmt(elseStmt) {};
    void output(int level);
    void typeCheck();
    void genCode();
};

class WhileStmt : public StmtNode
{
private:
    ExprNode *cond;
    StmtNode *Stmt;
    BasicBlock* cond_bb;
    BasicBlock* end_bb;
public:
    WhileStmt(ExprNode *cond, StmtNode *Stmt) : cond(cond), Stmt(Stmt) {};
    void output(int level);
    void typeCheck();
    void genCode();
};

class ParaIDList
{
private:
    std::queue<ExprNode*> exprlist;
public:
    ParaIDList(std::queue<ExprNode*> exprlist) : exprlist(exprlist) {};
    ParaIDList()  {};
    std::queue<ExprNode*> getList() {return this->exprlist;};
    void output(int level);
};

class InitIDList
{
private:
    std::queue<SymbolEntry*> idList;
    std::queue<ExprNode*> nums;
public:
    InitIDList(std::queue<SymbolEntry*> idList, std::queue<ExprNode*> nums) : idList(idList), nums(nums){};
    void output(int level);
    void poponese() {idList.pop();};
    void poponenu() {nums.pop();};
    std::queue<SymbolEntry*> *getList() {return &idList;};
    std::queue<ExprNode*> *getNums() {return &nums;};
    void setType(Type *type) {
        std::queue<SymbolEntry*> idl;
        while(!this->idList.empty()){
    	SymbolEntry* se=this->idList.front();
    	se->setType(type);
        this->idList.pop();
        idl.push(se);
        }
        this->idList=idl;
    };
    //void genCode();
};

class InitStmt : public StmtNode
{
private:
    InitIDList* initIDList;
public:
    InitStmt(InitIDList* initIDList) : initIDList(initIDList){};
    void output(int level);
    void typeCheck();
    void genCode();
    
};

class ReturnStmt : public StmtNode
{
private:
    StmtNode *funcCall;
    ExprNode *retValue;
public:
    ReturnStmt(ExprNode*retValue) : retValue(retValue) {};
    ReturnStmt(StmtNode *funcCall) : funcCall(funcCall) {};
    ReturnStmt(){};
    void output(int level);
    void typeCheck();
    void genCode();
};

class AssignStmt : public StmtNode
{
private:
    ExprNode *lval;
    ExprNode *expr;
public:
    AssignStmt(ExprNode *lval, ExprNode *expr) : lval(lval), expr(expr) {};
    void output(int level);
    void typeCheck();
    void genCode();
};

class ExprStmt : public StmtNode
{
private:
    ExprNode *expr;
public:
    ExprStmt(ExprNode *expr) : expr(expr) {};
    ExprStmt()  {};
    void output(int level);
    void typeCheck();
    void genCode();
};

class FuncExpr : public ExprNode
{
private:
    ParaIDList *paraidlist;
public:
    FuncExpr(SymbolEntry *se) : ExprNode(se) {dst=new Operand(new TemporarySymbolEntry(
            se->getType(), SymbolTable::getLabel()));};
    FuncExpr(SymbolEntry *se, ParaIDList *paraidlist) : ExprNode(se), paraidlist(paraidlist) {dst=new Operand(new TemporarySymbolEntry(
            se->getType(), SymbolTable::getLabel()));};
    void output(int level);
    void typeCheck();
    void genCode();
};

class FunctionDef : public StmtNode
{
private:
    SymbolEntry *se;
    ParaList *paraList;
    StmtNode *stmt;
public:
    FunctionDef(SymbolEntry *se, ParaList *paraList,StmtNode *stmt) : se(se), paraList(paraList), stmt(stmt){};
    void output(int level);
    void typeCheck();
    void genCode();
};

class Ast
{
private:
    Node* root;
public:
    Ast() {root = nullptr;}
    void setRoot(Node*n) {root = n;}
    void output();
    void typeCheck();
    void genCode(Unit *unit);
};

class BlankStmt : public StmtNode {
   public:
    BlankStmt(){};
    void output(int level){};
    void typeCheck(){};
    void genCode(){};
};
#endif