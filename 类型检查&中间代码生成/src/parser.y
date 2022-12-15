%define parse.error verbose
%code top{
    #include <iostream>
    #include <assert.h>
    #include <queue>
    #include "parser.h"
    extern char* yytext;
    extern int yylineno;
    extern Ast ast;
    int yylex();
    int yyerror( char const * );
    Type *funcionRetType;
    std::string funcName;
    int ifReturn=1;
}

%code requires {
    #include "Ast.h"
    #include "SymbolTable.h"
    #include "Type.h"
}

%union {
    int itype;
    char* strtype;
    StmtNode* stmttype;
    ExprNode* exprtype;
    Type* type;
    IDList *idlist;
    ParaList* paraList;
    InitIDList *initIdList;
    ParaIDList *paraIdList;
}

%start Program
%token <strtype> ID 
%token <itype> INTEGER HEXADECIMAL OCTAL
%token IF ELSE WHILE 
%token INT VOID CONST
%token LPAREN RPAREN LBRACE RBRACE SEMICOLON COMMA
%token ADD SUB OR AND LESS ASSIGN LESSEQ MOREEQ NOTEQUAL EQUAL MORE NOT DIV MUL MOD
%token RETURN

%nterm <itype> Intint
%nterm <stmttype> Stmts Stmt AssignStmt BlockStmt IfStmt ReturnStmt InitStmt DeclStmt FuncDef ExprStmt WhileStmt BlankStmt
%nterm <exprtype> Exp AddExp Cond LOrExp PrimaryExp LVal RelExp LAndExp MulExp NotExp FuncExpr
%nterm <type> Type
%nterm <idlist> IDList
%nterm <paraList> ParaList
%nterm <initIdList> InitIDList
%nterm <paraIdList> ParaIDList

%precedence THEN
%precedence ELSE
%%
Program
    : Stmts {
        ast.setRoot($1);
    }
    ;
Stmts
    : Stmt {$$=$1;}
    | Stmts Stmt{
        $$ = new SeqNode($1, $2);
    }
    ;
Stmt
    : AssignStmt {$$=$1;}
    | BlockStmt {$$=$1;}
    | IfStmt {$$=$1;}
    | ReturnStmt {$$=$1;}
    | DeclStmt {$$=$1;}
    | FuncDef {$$=$1;}
    | InitStmt {$$=$1;}
    | ExprStmt {$$=$1;}
    | WhileStmt {$$=$1;}
    | BlankStmt {$$=$1;}
    ;

    
IDList
    : ID {
    	SymbolEntry *se;
        se=identifiers->lookup($1);
        if(se!=nullptr && ((IdentifierSymbolEntry*)se)->getScope()==identifiers->getLevel())
        {
            fprintf(stderr, "identifier \"%s\" has already been defined\n", (char*)$1);
        }
        se = new IdentifierSymbolEntry(TypeSystem::voidType, $1, identifiers->getLevel());
        identifiers->install($1, se);
        std::queue<SymbolEntry*> idlist;
        idlist.push(se);
        $$ = new IDList(idlist);
    }
    | IDList COMMA ID {
    	SymbolEntry *se;
        se=identifiers->lookup($3);
        if(se!=nullptr && ((IdentifierSymbolEntry*)se)->getScope()==identifiers->getLevel())
        {
            fprintf(stderr, "identifier \"%s\" has already been defined\n", (char*)$3);
        }
        se = new IdentifierSymbolEntry(TypeSystem::voidType, $3, identifiers->getLevel());
        identifiers->install($3, se);
        std::queue<SymbolEntry*> idl = $1->getList();
        idl.push(se);
        $$=new IDList(idl);
    }
    ;
ParaList
    :
    Type ID {
        SymbolEntry *se = new IdentifierSymbolEntry($1, $2, identifiers->getLevel());
        
        identifiers->install($2, se);
        std::queue<SymbolEntry*> idList;
        idList.push(se);
        $$ = new ParaList(idList);
        // delete []$2;
    }
    |
    ParaList COMMA Type ID{
        SymbolEntry *se = new IdentifierSymbolEntry($3, $4, identifiers->getLevel());
        identifiers->install($4, se);
        std::queue<SymbolEntry*> idList = $1->getList();
        idList.push(se);
        $$ = new ParaList(idList);
        // delete []$2;
    }
    | %empty {$$ = new ParaList();}
    ;


ParaIDList
    :
    Exp {
        std::queue<ExprNode*> exprlist;
        exprlist.push($1);
        $$ = new ParaIDList(exprlist);
        // delete []$2;
    }
    |
    ParaIDList COMMA Exp {
        std::queue<ExprNode*> exprlist=$1->getList();
        exprlist.push($3);
        $$ = new ParaIDList(exprlist);
        // delete []$2;
    }
    | %empty {$$ = new ParaIDList();}
    ;

InitIDList
    :
    ID ASSIGN Exp {
        SymbolEntry *se;
        se=identifiers->lookup($1);
        if(se!=nullptr && ((IdentifierSymbolEntry*)se)->getScope()==identifiers->getLevel())
        {
            fprintf(stderr, "identifier \"%s\" has already been defined\n", (char*)$1);
        }
        se = new IdentifierSymbolEntry(TypeSystem::intType, $1, identifiers->getLevel());
        identifiers->install($1, se);
        std::queue<SymbolEntry*> idList;
        std::queue<ExprNode*> nums;
        idList.push(se);
        nums.push($3);
        $$ = new InitIDList(idList, nums);
        delete $1;
    }
    |
    InitIDList COMMA ID ASSIGN Exp {
        SymbolEntry *se;
        se=identifiers->lookup($3);
        if(se!=nullptr && ((IdentifierSymbolEntry*)se)->getScope()==identifiers->getLevel())
        {
            fprintf(stderr, "identifier \"%s\" has already been defined\n", (char*)$3);
        }
        se = new IdentifierSymbolEntry(TypeSystem::intType, $3, identifiers->getLevel());
        identifiers->install($3, se);
        std::queue<SymbolEntry*> *idList = $1->getList();
        std::queue<ExprNode*> *nums = $1->getNums();
        idList->push(se);
        nums->push($5);
        $$ = new InitIDList(*idList, *nums);
        delete $3;
    }
    ;
InitStmt
    :
    Type InitIDList SEMICOLON {
        $2->setType($1);
        $$ = new InitStmt($2);
        // delete []$2;
    }
    ;

LVal
    : ID {
        SymbolEntry *se;
        se = identifiers->lookup($1);
        if(se == nullptr)
        {
            fprintf(stderr, "identifier \"%s\" is undefined\n", (char*)$1);
            delete [](char*)$1;
            assert(se != nullptr);
        }
        $$ = new Id(se);
        delete []$1;
    }
    ;
AssignStmt
    :
    LVal ASSIGN Exp SEMICOLON {
        $$ = new AssignStmt($1, $3);
    }
    ;

BlockStmt
    :   LBRACE 
        {identifiers = new SymbolTable(identifiers);} 
        Stmts RBRACE 
        {
            $$ = new CompoundStmt($3);
            SymbolTable *top = identifiers;
            identifiers = identifiers->getPrev();
            delete top;
        }
    |
    LBRACE RBRACE {
        $$ = new CompoundStmt();
    }
    ;
IfStmt
    : IF LPAREN Cond RPAREN Stmt %prec THEN {
        $$ = new IfStmt($3, $5);
    }
    | IF LPAREN Cond RPAREN Stmt ELSE Stmt {
        $$ = new IfElseStmt($3, $5, $7);
    }
    ;
WhileStmt
    : WHILE LPAREN Cond RPAREN Stmt {
    	$$ = new WhileStmt($3, $5);
    }    
    ;
ReturnStmt
    :
    RETURN Exp SEMICOLON {
        ifReturn=1;
        Type *retType=$2->getSymPtr()->getType();
        if(retType->isFunc()){
            if(((FunctionType*)retType)->getRetType()!=funcionRetType)
                fprintf(stderr, "the return_type of \"%s\" is wrong\n", funcName.c_str());
        }
        else if(retType!=funcionRetType){
            fprintf(stderr, "the return_type of \"%s\" is wrong\n", funcName.c_str());
        }
        $$ = new ReturnStmt($2);
    }
    | RETURN SEMICOLON {
        ifReturn=1;
        if(funcionRetType!=TypeSystem::voidType){
            fprintf(stderr, "the return_type of \"%s\" is wrong\n", funcName.c_str());
        }
        $$ = new ReturnStmt();
    }
    ;
Exp
    :
    AddExp {$$ = $1;}
    ;
Cond
    :
    LOrExp{$$=$1;}
    ;
Intint
    :
    INTEGER {$$=$1;}
    |
    HEXADECIMAL {$$=$1;}
    | 
    OCTAL {$$=$1;}
    ;
PrimaryExp
    :
    LPAREN Exp RPAREN {$$=$2;}
    |
    LVal {
        $$ = $1;
    }
    | Intint {
        SymbolEntry *se = new ConstantSymbolEntry(TypeSystem::intType, $1);
        $$ = new Constant(se);
    }
    | FuncExpr {
    	$$=$1;
    }
    ;
NotExp
    :
    PrimaryExp {$$ = $1;}
    |
    NOT NotExp {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
        $$ = new SingelExpr(se, SingelExpr::NOT, $2);        
    }
    |
    ADD NotExp {

        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        $$ = new SingelExpr(se, SingelExpr::POS, $2);  
    }
    |
    SUB NotExp {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        $$ = new SingelExpr(se, SingelExpr::MIN, $2);  
    }
    ;
MulExp
    :
    NotExp {$$=$1;}
    |
    MulExp MUL NotExp
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::MUL, $1, $3);
    }
    |
    MulExp DIV NotExp
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::DIV, $1, $3);
    }
    |
    MulExp MOD NotExp
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::MOD, $1, $3);
    }
    ;
AddExp
    :
    MulExp{$$=$1;}
    |
    AddExp ADD MulExp
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::ADD, $1, $3);
    }
    |
    AddExp SUB MulExp
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::SUB, $1, $3);
    }
    ;
RelExp
    :
    AddExp {$$ = $1;}
    |
    AddExp LESSEQ RelExp
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::LESSEQ, $1, $3);
    }
    |
    AddExp MOREEQ RelExp
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::MOREEQ, $1, $3);
    }
    |
    AddExp LESS RelExp
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::LESS, $1, $3);
    }
    |
    AddExp MORE RelExp
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::MORE, $1, $3);
    }
    |
    AddExp EQUAL RelExp
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::EQUAL, $1, $3);
    }
    |
    AddExp NOTEQUAL RelExp
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::NOTEQUAL, $1, $3);
    }
    ;
LAndExp
    :
    RelExp {$$ = $1;}
    |
    LAndExp AND RelExp
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::AND, $1, $3);
    }
    ;
LOrExp
    :
    LAndExp {$$ = $1;}
    |
    LOrExp OR LAndExp
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::OR, $1, $3);
    }
    ;
Type
    : 
    CONST INT {
        $$=TypeSystem::constintType;
    } 
    | INT {
        $$ = TypeSystem::intType;
    }
    | VOID {
        $$ = TypeSystem::voidType;
    }
    ;

ExprStmt
    :
    Exp SEMICOLON {
    	$$ = new ExprStmt($1);  
    };
BlankStmt
    : 
    SEMICOLON {
        $$ = new BlankStmt();
    }
    ;
FuncExpr
    :
    ID LPAREN ParaIDList RPAREN {
        SymbolEntry *se;
        se = identifiers->lookup($1);
        if(se == nullptr)
        {
            fprintf(stderr, "function \"%s\" is undefined\n", (char*)$1);
            delete [](char*)$1;
            assert(se != nullptr);
        }
        Type *type=se->getType();
        std::vector<Type*> paramsType=((FunctionType*)type)->getParaType();
        std::vector<Type*> newParamsType;
        std::queue<ExprNode*> idList = $3->getList();
        while(!idList.empty()){
            ExprNode *se0=idList.front();
            Type *t=se0->getSymPtr()->getType();
            newParamsType.emplace_back(t);
            idList.pop();
        }
        int i=0;
        while(i < paramsType.size()){
            if(!((paramsType[i]==TypeSystem::constintType&&newParamsType[i]==TypeSystem::intType)||(paramsType[i]==TypeSystem::intType&&newParamsType[i]==TypeSystem::constintType)||paramsType[i]==newParamsType[i]))
                fprintf(stderr, "the params of \"%s\" is wrong\n", (char*)$1);
            i++;
        }
        
    	$$ = new FuncExpr(se, $3);
        //delete []$1;   
    }
    ;
    
FuncDef
    :
    Type ID LPAREN ParaList RPAREN {
        ifReturn=0;
        funcionRetType=$1;
        funcName=$2;
        Type *funcType;
        std::vector<Type*> paramsType;
        std::queue<SymbolEntry*> idList = $4->getList();
        while(!idList.empty()){
            SymbolEntry *se0=idList.front();
            Type *t=se0->getType();
            paramsType.emplace_back(t);
            idList.pop();
        }
        funcType = new FunctionType($1,paramsType);
        SymbolEntry *se = new IdentifierSymbolEntry(funcType, $2, identifiers->getLevel());
        identifiers->install($2, se);
        identifiers = new SymbolTable(identifiers);
    }
    BlockStmt
    {   
        SymbolEntry *se;
        se = identifiers->lookup($2);
        $$ = new FunctionDef(se, $4, $7);
        SymbolTable *top = identifiers;
        identifiers = identifiers->getPrev();
        delete top;
        //delete []$2;
        if(ifReturn==0){
            fprintf(stderr, "the function does not have a return\n");
        }
    }
   
    ;
DeclStmt
    :
    Type IDList SEMICOLON {
        $2->setType($1);
        $$ = new DeclStmt($2);
        //delete []$2;
    }
    ;
%%

int yyerror(char const* message)
{
    std::cerr<<message<<std::endl;
    std::cout<<yytext<<std::endl;
    std::cout<<yylineno<<std::endl;
    return -1;
}