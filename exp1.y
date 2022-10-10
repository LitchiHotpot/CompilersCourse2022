%{
#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#ifndef YYSTYPE
#define YYSTYPE double
#endif
int yylex();
extern int yyparse();
FILE* yyin;
void yyerror(const char* s );
%}

%token NUMBER
%token NAME
%token ADD
%token SUB
%token MUL
%token DIV
%left ADD SUB
%left MUL DIV
%right UMINUS

%%


lines : lines expr ';' { printf("%f\n", $2); }
    | lines ';'
    |
    ;
    
stat:      NAME '=' expr     { $1->value=$3; }
    |       expr             { printf("=%g\n",$1); }
    ;

expr : expr ADD expr { $$ = $1 + $3; }
    | expr SUB expr { $$ = $1 - $3; }
    | expr MUL expr { $$ = $1 * $3; }
    | expr DIV expr {if ($3==0.0) yyerror("divided by zero!\n") else { $$ = $1 / $3; }}
    | '('expr')' { $$ = $2; }
    |SUB expr %prec UMINUS { $$ = -$2; }
    | NUMBER
    ;

%%

 // programs section

int yylex()
{
// place your token retrieving code here
    int t;
    while(1){
    t=getchar();
    if (t == ' '|| t== '\t' || t == '\n'){
        }
    else if (isdigit(t)) {
        yylval = 0;
        while ( isdigit(t)) {
            yylval = yylval*10+t-'0';
            t = getchar ();
        }
        ungetc(t,stdin);
        return NUMBER;
    }
    else if(t=='+')
        return ADD;
    else if(t=='-')
        return SUB;
    else if(t=='*')
        return MUL;
    else if(t=='/')
        return DIV;
    else
    	return t;
    }
}

int main(void)
{
yyin = stdin;
do {
yyparse();
} while (!feof(yyin));
return 0;
}
void yyerror(const char* s) {
    fprintf(stderr,"Parse error : %s\n", s );
    exit (1);
}

