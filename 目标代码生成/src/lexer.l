%option noyywrap
%{
    #define YY_NO_UNPUT
    #define YY_NO_INPUT

    #include "parser.h"
    #include <ostream>
    #include <fstream>
    using namespace std;

    extern FILE *yyin; 
    extern FILE *yyout;
    extern bool dump_tokens;

    void DEBUG_FOR_LAB4(std::string s){
        std::string DEBUG_INFO = "[DEBUG LAB4]: \t" + s + "\n";
        fputs(DEBUG_INFO.c_str(), yyout);
    }
%}

HEXADECIMAL 0[xX][0-9a-fA-F]+
OCTAL 0[0-7]+
LINECOMMENT \/\/[^(\r\n|\n|\r)]*
BLOCKCOMMENT ("/*"([^\*]|(\*)*[^\*/])*(\*)*"*/")
DECIMIAL ([1-9][0-9]*|0)
ID [[:alpha:]_][[:alpha:][:digit:]_]*

EOL (\r\n|\n|\r)
WHITE [\t ]
%x BLOCKCOMMENT

%%

{LINECOMMENT} yylineno--;
{BLOCKCOMMENT} yylineno--;
"while" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("WHILE\twhile");
    return WHILE;
}
"const" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("CONST\tconst");
    return CONST;
}
"int" {
    /*
    * Questions: 
    *   Q1: Why we need to return INT in further labs?
    *   Q2: What is "INT" actually?
    */
    if(dump_tokens)
        DEBUG_FOR_LAB4("INT\tint");
    return INT;
}
"void" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("VOID\tvoid");
    return VOID;
}
"if" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("IF\tif");
    return IF;
};
"else" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("ELSE\telse");
    return ELSE;
};
"return" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("RETURN\treturn");
    return RETURN;
}

"&&" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("AND\t=");
    return AND;
}
"||" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("OR\t=");
    return OR;
}
"!=" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("ASSIGN\t=");
    return NOTEQUAL;  
}
"==" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("ASSIGN\t=");
    return EQUAL;
}
"<=" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("LESSEQ\t<");
    return LESSEQ;
}
">=" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("MOREEQ\t<");
    return MOREEQ;
}
"!" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("ASSIGN\t=");
    return NOT;  
}

"=" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("ASSIGN\t=");
    return ASSIGN;
}
"%" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("MOD\t=");
    return MOD;
}
"<" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("LESS\t<");
    return LESS;
}
">" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("MORE\t<");
    return MORE;
}
"+" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("ADD\t+");
    return ADD;
}
"-" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("SUB\t+");
    return SUB;
}
"*" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("MUL\t+");
    return MUL;
}
"/" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("DIV\t+");
    return DIV;
}
"," {
     if(dump_tokens)
        DEBUG_FOR_LAB4("COMMA\t;");
    return COMMA;   
}
";" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("SEMICOLON\t;");
    return SEMICOLON;
}
"(" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("LPAREN\t(");
    return LPAREN;
}
")" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("RPAREN\t)");
    return RPAREN;
}
"{" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("LBRACE\t{");
    return LBRACE;
}
"}" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("RBRACE\t}");
    return RBRACE;
}
{HEXADECIMAL} {
     int temp;
    sscanf(yytext, "%x", &temp);
    if(dump_tokens)
        DEBUG_FOR_LAB4(string("NUMBER\t") + to_string(temp));
    yylval.itype = temp;
    return INTEGER;
}
{OCTAL} {
    int temp;
    sscanf(yytext, "%o", &temp);
    if(dump_tokens)
        DEBUG_FOR_LAB4(string("NUMBER\t") + to_string(temp));
    yylval.itype = temp;
    return INTEGER;
}
{DECIMIAL} {
    if(dump_tokens)
        DEBUG_FOR_LAB4(yytext);
    yylval.itype = atoi(yytext);
    return INTEGER;
}
"putint" {
    if(dump_tokens)
        DEBUG_FOR_LAB4(yytext);
    char *lexeme;
    lexeme = new char[strlen(yytext) + 1];
    strcpy(lexeme, yytext);
    yylval.strtype = lexeme;
    std::vector<Type*> t;
    t.emplace_back(TypeSystem::intType);
    Type* funcType = new FunctionType(TypeSystem::voidType, t);
    SymbolTable* st = identifiers;
    while(st->getPrev())
        st = st->getPrev();
    SymbolEntry* se = new IdentifierSymbolEntry(funcType, yytext, st->getLevel());
    st->install(yytext, se);
    return ID;
}
"getint" {
    if(dump_tokens)
        DEBUG_FOR_LAB4(yytext);
    char *lexeme;
    lexeme = new char[strlen(yytext) + 1];
    strcpy(lexeme, yytext);
    yylval.strtype = lexeme;
    std::vector<Type*> t;
    Type* funcType = new FunctionType(TypeSystem::intType, t);
    SymbolTable* st = identifiers;
    while(st->getPrev())
        st = st->getPrev();
    SymbolEntry* se = new IdentifierSymbolEntry(funcType, yytext, st->getLevel());
    st->install(yytext, se);
    return ID;
}
"putch" {
    if(dump_tokens)
        DEBUG_FOR_LAB4(yytext);
    char *lexeme;
    lexeme = new char[strlen(yytext) + 1];
    strcpy(lexeme, yytext);
    yylval.strtype = lexeme;
    std::vector<Type*> t;
    t.emplace_back(TypeSystem::intType);
    Type* funcType = new FunctionType(TypeSystem::voidType, t);
    SymbolTable* st = identifiers;
    while(st->getPrev())
        st = st->getPrev();
    SymbolEntry* se = new IdentifierSymbolEntry(funcType, yytext, st->getLevel());
    st->install(yytext, se);
    return ID;
}
{ID} {
    if(dump_tokens)
        DEBUG_FOR_LAB4(yytext);
    char *lexeme;
    lexeme = new char[strlen(yytext) + 1];
    strcpy(lexeme, yytext);
    yylval.strtype = lexeme;
    return ID;
}
{EOL} yylineno++;
{WHITE}
%%
