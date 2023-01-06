/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_INCLUDE_PARSER_H_INCLUDED
# define YY_YY_INCLUDE_PARSER_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif
/* "%code requires" blocks.  */
#line 17 "src/parser.y"

    #include "Ast.h"
    #include "SymbolTable.h"
    #include "Type.h"

#line 55 "include/parser.h"

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    ID = 258,                      /* ID  */
    INTEGER = 259,                 /* INTEGER  */
    HEXADECIMAL = 260,             /* HEXADECIMAL  */
    OCTAL = 261,                   /* OCTAL  */
    IF = 262,                      /* IF  */
    ELSE = 263,                    /* ELSE  */
    WHILE = 264,                   /* WHILE  */
    INT = 265,                     /* INT  */
    VOID = 266,                    /* VOID  */
    CONST = 267,                   /* CONST  */
    LPAREN = 268,                  /* LPAREN  */
    RPAREN = 269,                  /* RPAREN  */
    LBRACE = 270,                  /* LBRACE  */
    RBRACE = 271,                  /* RBRACE  */
    SEMICOLON = 272,               /* SEMICOLON  */
    COMMA = 273,                   /* COMMA  */
    ADD = 274,                     /* ADD  */
    SUB = 275,                     /* SUB  */
    OR = 276,                      /* OR  */
    AND = 277,                     /* AND  */
    LESS = 278,                    /* LESS  */
    ASSIGN = 279,                  /* ASSIGN  */
    LESSEQ = 280,                  /* LESSEQ  */
    MOREEQ = 281,                  /* MOREEQ  */
    NOTEQUAL = 282,                /* NOTEQUAL  */
    EQUAL = 283,                   /* EQUAL  */
    MORE = 284,                    /* MORE  */
    NOT = 285,                     /* NOT  */
    DIV = 286,                     /* DIV  */
    MUL = 287,                     /* MUL  */
    MOD = 288,                     /* MOD  */
    RETURN = 289,                  /* RETURN  */
    THEN = 290                     /* THEN  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 23 "src/parser.y"

    int itype;
    char* strtype;
    StmtNode* stmttype;
    ExprNode* exprtype;
    Type* type;
    IDList *idlist;
    ParaList* paraList;
    InitIDList *initIdList;
    ParaIDList *paraIdList;

#line 119 "include/parser.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_INCLUDE_PARSER_H_INCLUDED  */
