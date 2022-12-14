/* A Bison parser, made by GNU Bison 3.0.4.  */

/* Bison implementation for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

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

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output.  */
#define YYBISON 1

/* Bison version.  */
#define YYBISON_VERSION "3.0.4"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1

/* "%code top" blocks.  */
#line 2 "src/parser.y" /* yacc.c:316  */

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

#line 77 "src/parser.cpp" /* yacc.c:316  */



/* Copy the first part of user declarations.  */

#line 83 "src/parser.cpp" /* yacc.c:339  */

# ifndef YY_NULLPTR
#  if defined __cplusplus && 201103L <= __cplusplus
#   define YY_NULLPTR nullptr
#  else
#   define YY_NULLPTR 0
#  endif
# endif

/* Enabling verbose error messages.  */
#ifdef YYERROR_VERBOSE
# undef YYERROR_VERBOSE
# define YYERROR_VERBOSE 1
#else
# define YYERROR_VERBOSE 1
#endif

/* In a future release of Bison, this section will be replaced
   by #include "parser.h".  */
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
#line 16 "src/parser.y" /* yacc.c:355  */

    #include "Ast.h"
    #include "SymbolTable.h"
    #include "Type.h"

#line 119 "src/parser.cpp" /* yacc.c:355  */

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    ID = 258,
    INTEGER = 259,
    HEXADECIMAL = 260,
    OCTAL = 261,
    IF = 262,
    ELSE = 263,
    WHILE = 264,
    INT = 265,
    VOID = 266,
    CONST = 267,
    LPAREN = 268,
    RPAREN = 269,
    LBRACE = 270,
    RBRACE = 271,
    SEMICOLON = 272,
    COMMA = 273,
    ADD = 274,
    SUB = 275,
    OR = 276,
    AND = 277,
    LESS = 278,
    ASSIGN = 279,
    LESSEQ = 280,
    MOREEQ = 281,
    NOTEQUAL = 282,
    EQUAL = 283,
    MORE = 284,
    NOT = 285,
    DIV = 286,
    MUL = 287,
    MOD = 288,
    RETURN = 289,
    THEN = 290
  };
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED

union YYSTYPE
{
#line 22 "src/parser.y" /* yacc.c:355  */

    int itype;
    char* strtype;
    StmtNode* stmttype;
    ExprNode* exprtype;
    Type* type;
    IDList *idlist;
    ParaList* paraList;
    InitIDList *initIdList;
    ParaIDList *paraIdList;

#line 179 "src/parser.cpp" /* yacc.c:355  */
};

typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_INCLUDE_PARSER_H_INCLUDED  */

/* Copy the second part of user declarations.  */

#line 196 "src/parser.cpp" /* yacc.c:358  */

#ifdef short
# undef short
#endif

#ifdef YYTYPE_UINT8
typedef YYTYPE_UINT8 yytype_uint8;
#else
typedef unsigned char yytype_uint8;
#endif

#ifdef YYTYPE_INT8
typedef YYTYPE_INT8 yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef YYTYPE_UINT16
typedef YYTYPE_UINT16 yytype_uint16;
#else
typedef unsigned short int yytype_uint16;
#endif

#ifdef YYTYPE_INT16
typedef YYTYPE_INT16 yytype_int16;
#else
typedef short int yytype_int16;
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif ! defined YYSIZE_T
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned int
# endif
#endif

#define YYSIZE_MAXIMUM ((YYSIZE_T) -1)

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif

#ifndef YY_ATTRIBUTE
# if (defined __GNUC__                                               \
      && (2 < __GNUC__ || (__GNUC__ == 2 && 96 <= __GNUC_MINOR__)))  \
     || defined __SUNPRO_C && 0x5110 <= __SUNPRO_C
#  define YY_ATTRIBUTE(Spec) __attribute__(Spec)
# else
#  define YY_ATTRIBUTE(Spec) /* empty */
# endif
#endif

#ifndef YY_ATTRIBUTE_PURE
# define YY_ATTRIBUTE_PURE   YY_ATTRIBUTE ((__pure__))
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# define YY_ATTRIBUTE_UNUSED YY_ATTRIBUTE ((__unused__))
#endif

#if !defined _Noreturn \
     && (!defined __STDC_VERSION__ || __STDC_VERSION__ < 201112)
# if defined _MSC_VER && 1200 <= _MSC_VER
#  define _Noreturn __declspec (noreturn)
# else
#  define _Noreturn YY_ATTRIBUTE ((__noreturn__))
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YYUSE(E) ((void) (E))
#else
# define YYUSE(E) /* empty */
#endif

#if defined __GNUC__ && 407 <= __GNUC__ * 100 + __GNUC_MINOR__
/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN \
    _Pragma ("GCC diagnostic push") \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")\
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# define YY_IGNORE_MAYBE_UNINITIALIZED_END \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif


#if ! defined yyoverflow || YYERROR_VERBOSE

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* ! defined yyoverflow || YYERROR_VERBOSE */


#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yytype_int16 yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (sizeof (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (sizeof (yytype_int16) + sizeof (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYSIZE_T yynewbytes;                                            \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * sizeof (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / sizeof (*yyptr);                          \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, (Count) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYSIZE_T yyi;                         \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  61
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   154

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  36
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  32
/* YYNRULES -- Number of rules.  */
#define YYNRULES  73
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  126

/* YYTRANSLATE[YYX] -- Symbol number corresponding to YYX as returned
   by yylex, with out-of-bounds checking.  */
#define YYUNDEFTOK  2
#define YYMAXUTOK   290

#define YYTRANSLATE(YYX)                                                \
  ((unsigned int) (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, without out-of-bounds checking.  */
static const yytype_uint8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35
};

#if YYDEBUG
  /* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_uint16 yyrline[] =
{
       0,    56,    56,    61,    62,    67,    68,    69,    70,    71,
      72,    73,    74,    75,    80,    93,   109,   119,   127,   133,
     140,   146,   151,   168,   187,   195,   210,   217,   216,   226,
     231,   234,   239,   245,   258,   262,   266,   268,   270,   274,
     276,   279,   283,   289,   291,   296,   302,   309,   311,   317,
     323,   331,   333,   339,   347,   349,   355,   361,   367,   373,
     379,   387,   389,   397,   399,   407,   410,   413,   420,   424,
     430,   459,   459,   490
};
#endif

#if YYDEBUG || YYERROR_VERBOSE || 1
/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "$end", "error", "$undefined", "ID", "INTEGER", "HEXADECIMAL", "OCTAL",
  "IF", "ELSE", "WHILE", "INT", "VOID", "CONST", "LPAREN", "RPAREN",
  "LBRACE", "RBRACE", "SEMICOLON", "COMMA", "ADD", "SUB", "OR", "AND",
  "LESS", "ASSIGN", "LESSEQ", "MOREEQ", "NOTEQUAL", "EQUAL", "MORE", "NOT",
  "DIV", "MUL", "MOD", "RETURN", "THEN", "$accept", "Intint", "Stmts",
  "Stmt", "AssignStmt", "BlockStmt", "IfStmt", "ReturnStmt", "InitStmt",
  "DeclStmt", "FuncDef", "ExprStmt", "WhileStmt", "Exp", "AddExp", "Cond",
  "LOrExp", "PrimaryExp", "LVal", "RelExp", "LAndExp", "MulExp", "NotExp",
  "FuncExpr", "Type", "IDList", "ParaList", "InitIDList", "ParaIDList",
  "Program", "$@1", "$@2", YY_NULLPTR
};
#endif

# ifdef YYPRINT
/* YYTOKNUM[NUM] -- (External) token number corresponding to the
   (internal) symbol number NUM (which must be that of a token).  */
static const yytype_uint16 yytoknum[] =
{
       0,   256,   257,   258,   259,   260,   261,   262,   263,   264,
     265,   266,   267,   268,   269,   270,   271,   272,   273,   274,
     275,   276,   277,   278,   279,   280,   281,   282,   283,   284,
     285,   286,   287,   288,   289,   290
};
# endif

#define YYPACT_NINF -77

#define yypact_value_is_default(Yystate) \
  (!!((Yystate) == (-77)))

#define YYTABLE_NINF -1

#define yytable_value_is_error(Yytable_value) \
  0

  /* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
     STATE-NUM.  */
static const yytype_int8 yypact[] =
{
     120,     4,   -77,   -77,   -77,    19,    25,   -77,   -77,    30,
       9,    34,   -77,     9,     9,     9,     9,   -77,   120,   -77,
     -77,   -77,   -77,   -77,   -77,   -77,   -77,   -77,   -77,    50,
     -15,   -77,    -3,    11,   -77,   -77,    65,    69,     9,     9,
       9,   -77,    59,   -77,   -77,   120,   -77,   -77,   -77,    57,
     -77,   -77,     9,     9,     9,     9,     9,     9,     3,    46,
      48,   -77,   -77,     5,   -15,    61,    55,     8,    58,    63,
     -77,    88,   -77,    11,    11,    64,   -77,   -77,   -77,    37,
       9,   -77,    79,   -77,    80,   -77,     9,   120,     9,     9,
       9,     9,     9,     9,     9,     9,   120,   -77,   -77,    81,
       6,   -77,   -77,    62,   -77,    77,    58,   -15,   -15,   -15,
     -15,   -15,   -15,     8,   -77,   -77,   -77,    37,     9,   120,
      73,    86,   -77,   -77,   -77,   -77
};

  /* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
     Performed when YYTABLE does not specify something else to do.  Zero
     means the default is an error.  */
static const yytype_uint8 yydefact[] =
{
       0,    25,    36,    37,    38,     0,     0,    66,    67,     0,
       0,    27,    69,     0,     0,     0,     0,    41,     2,     3,
       5,     6,     7,     8,    11,     9,    10,    12,    13,     0,
      34,    43,    40,    51,    47,    42,     0,     0,    21,     0,
       0,    65,     0,    40,    29,     0,    45,    46,    44,     0,
       4,    68,     0,     0,     0,     0,     0,     0,    14,     0,
       0,     1,    19,     0,    54,     0,    35,    61,    63,     0,
      39,     0,    33,    52,    53,     0,    49,    48,    50,    18,
       0,    73,     0,    24,     0,    70,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,    28,    26,     0,
       0,    22,    15,     0,    20,    30,    64,    57,    55,    56,
      60,    59,    58,    62,    32,    16,    71,     0,     0,     0,
       0,     0,    23,    31,    72,    17
};

  /* YYPGOTO[NTERM-NUM].  */
static const yytype_int8 yypgoto[] =
{
     -77,   -77,    45,   -17,   -77,   -14,   -77,   -77,   -77,   -77,
     -77,   -77,   -77,    -8,   -33,    71,   -77,   -77,     0,    14,
      24,   -27,    -4,   -77,   -76,   -77,   -77,   -77,   -77,   -77,
     -77,   -77
};

  /* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int8 yydefgoto[] =
{
      -1,    17,    18,    19,    20,    21,    22,    23,    24,    25,
      26,    27,    28,    29,    30,    65,    66,    31,    43,    67,
      68,    33,    34,    35,    36,    59,   100,    60,    63,    37,
      45,   120
};

  /* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
     positive, shift that token.  If negative, reduce the rule whose
     number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_uint8 yytable[] =
{
      32,    50,    42,    99,    52,    53,    64,    64,    49,    46,
      47,    48,     1,     2,     3,     4,    79,    38,    32,    85,
     116,    54,    10,    86,   117,    73,    74,    80,    13,    14,
      62,    89,    39,    90,    91,    92,    93,    94,    40,    15,
      41,   121,    55,    56,    57,    32,    75,     7,     8,     9,
      44,    76,    77,    78,    50,    64,   107,   108,   109,   110,
     111,   112,    64,    81,    82,    83,    84,    51,    58,    61,
     105,    32,   101,    70,    72,    87,    88,    96,   104,   114,
      95,    98,   102,   103,   115,   119,   118,    32,    11,   125,
      71,     1,     2,     3,     4,     5,    32,     6,     7,     8,
       9,    10,   123,    11,    97,    12,   124,    13,    14,   113,
     122,    69,   106,     0,     0,     0,     0,     0,    15,    32,
       0,     0,    16,     1,     2,     3,     4,     5,     0,     6,
       7,     8,     9,    10,     0,    11,     0,    12,     0,    13,
      14,     0,     0,     0,     0,     0,     0,     0,     0,     0,
      15,     0,     0,     0,    16
};

static const yytype_int8 yycheck[] =
{
       0,    18,    10,    79,    19,    20,    39,    40,    16,    13,
      14,    15,     3,     4,     5,     6,    13,    13,    18,    14,
      14,    24,    13,    18,    18,    52,    53,    24,    19,    20,
      38,    23,    13,    25,    26,    27,    28,    29,    13,    30,
      10,   117,    31,    32,    33,    45,    54,    10,    11,    12,
      16,    55,    56,    57,    71,    88,    89,    90,    91,    92,
      93,    94,    95,    17,    18,    17,    18,    17,     3,     0,
      87,    71,    80,    14,    17,    14,    21,    14,    86,    96,
      22,    17,     3,     3,     3,     8,    24,    87,    15,     3,
      45,     3,     4,     5,     6,     7,    96,     9,    10,    11,
      12,    13,   119,    15,    16,    17,   120,    19,    20,    95,
     118,    40,    88,    -1,    -1,    -1,    -1,    -1,    30,   119,
      -1,    -1,    34,     3,     4,     5,     6,     7,    -1,     9,
      10,    11,    12,    13,    -1,    15,    -1,    17,    -1,    19,
      20,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      30,    -1,    -1,    -1,    34
};

  /* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
     symbol of state STATE-NUM.  */
static const yytype_uint8 yystos[] =
{
       0,     3,     4,     5,     6,     7,     9,    10,    11,    12,
      13,    15,    17,    19,    20,    30,    34,    37,    38,    39,
      40,    41,    42,    43,    44,    45,    46,    47,    48,    49,
      50,    53,    54,    57,    58,    59,    60,    65,    13,    13,
      13,    10,    49,    54,    16,    66,    58,    58,    58,    49,
      39,    17,    19,    20,    24,    31,    32,    33,     3,    61,
      63,     0,    49,    64,    50,    51,    52,    55,    56,    51,
      14,    38,    17,    57,    57,    49,    58,    58,    58,    13,
      24,    17,    18,    17,    18,    14,    18,    14,    21,    23,
      25,    26,    27,    28,    29,    22,    14,    16,    17,    60,
      62,    49,     3,     3,    49,    39,    56,    50,    50,    50,
      50,    50,    50,    55,    39,     3,    14,    18,    24,     8,
      67,    60,    49,    39,    41,     3
};

  /* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_uint8 yyr1[] =
{
       0,    36,    65,    38,    38,    39,    39,    39,    39,    39,
      39,    39,    39,    39,    61,    61,    62,    62,    62,    64,
      64,    64,    63,    63,    44,    54,    40,    66,    41,    41,
      42,    42,    48,    43,    49,    51,    37,    37,    37,    53,
      53,    53,    53,    58,    58,    58,    58,    57,    57,    57,
      57,    50,    50,    50,    55,    55,    55,    55,    55,    55,
      55,    56,    56,    52,    52,    60,    60,    60,    47,    47,
      59,    67,    46,    45
};

  /* YYR2[YYN] -- Number of symbols on the right hand side of rule YYN.  */
static const yytype_uint8 yyr2[] =
{
       0,     2,     1,     1,     2,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     3,     2,     4,     0,     1,
       3,     0,     3,     5,     3,     1,     4,     0,     4,     2,
       5,     7,     5,     3,     1,     1,     1,     1,     1,     3,
       1,     1,     1,     1,     2,     2,     2,     1,     3,     3,
       3,     1,     3,     3,     1,     3,     3,     3,     3,     3,
       3,     1,     3,     1,     3,     2,     1,     1,     2,     1,
       4,     0,     7,     3
};


#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)
#define YYEMPTY         (-2)
#define YYEOF           0

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                  \
do                                                              \
  if (yychar == YYEMPTY)                                        \
    {                                                           \
      yychar = (Token);                                         \
      yylval = (Value);                                         \
      YYPOPSTACK (yylen);                                       \
      yystate = *yyssp;                                         \
      goto yybackup;                                            \
    }                                                           \
  else                                                          \
    {                                                           \
      yyerror (YY_("syntax error: cannot back up")); \
      YYERROR;                                                  \
    }                                                           \
while (0)

/* Error token number */
#define YYTERROR        1
#define YYERRCODE       256



/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)

/* This macro is provided for backward compatibility. */
#ifndef YY_LOCATION_PRINT
# define YY_LOCATION_PRINT(File, Loc) ((void) 0)
#endif


# define YY_SYMBOL_PRINT(Title, Type, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Type, Value); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*----------------------------------------.
| Print this symbol's value on YYOUTPUT.  |
`----------------------------------------*/

static void
yy_symbol_value_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
{
  FILE *yyo = yyoutput;
  YYUSE (yyo);
  if (!yyvaluep)
    return;
# ifdef YYPRINT
  if (yytype < YYNTOKENS)
    YYPRINT (yyoutput, yytoknum[yytype], *yyvaluep);
# endif
  YYUSE (yytype);
}


/*--------------------------------.
| Print this symbol on YYOUTPUT.  |
`--------------------------------*/

static void
yy_symbol_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyoutput, "%s %s (",
             yytype < YYNTOKENS ? "token" : "nterm", yytname[yytype]);

  yy_symbol_value_print (yyoutput, yytype, yyvaluep);
  YYFPRINTF (yyoutput, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yytype_int16 *yybottom, yytype_int16 *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yytype_int16 *yyssp, YYSTYPE *yyvsp, int yyrule)
{
  unsigned long int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %lu):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       yystos[yyssp[yyi + 1 - yynrhs]],
                       &(yyvsp[(yyi + 1) - (yynrhs)])
                                              );
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args)
# define YY_SYMBOL_PRINT(Title, Type, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif


#if YYERROR_VERBOSE

# ifndef yystrlen
#  if defined __GLIBC__ && defined _STRING_H
#   define yystrlen strlen
#  else
/* Return the length of YYSTR.  */
static YYSIZE_T
yystrlen (const char *yystr)
{
  YYSIZE_T yylen;
  for (yylen = 0; yystr[yylen]; yylen++)
    continue;
  return yylen;
}
#  endif
# endif

# ifndef yystpcpy
#  if defined __GLIBC__ && defined _STRING_H && defined _GNU_SOURCE
#   define yystpcpy stpcpy
#  else
/* Copy YYSRC to YYDEST, returning the address of the terminating '\0' in
   YYDEST.  */
static char *
yystpcpy (char *yydest, const char *yysrc)
{
  char *yyd = yydest;
  const char *yys = yysrc;

  while ((*yyd++ = *yys++) != '\0')
    continue;

  return yyd - 1;
}
#  endif
# endif

# ifndef yytnamerr
/* Copy to YYRES the contents of YYSTR after stripping away unnecessary
   quotes and backslashes, so that it's suitable for yyerror.  The
   heuristic is that double-quoting is unnecessary unless the string
   contains an apostrophe, a comma, or backslash (other than
   backslash-backslash).  YYSTR is taken from yytname.  If YYRES is
   null, do not copy; instead, return the length of what the result
   would have been.  */
static YYSIZE_T
yytnamerr (char *yyres, const char *yystr)
{
  if (*yystr == '"')
    {
      YYSIZE_T yyn = 0;
      char const *yyp = yystr;

      for (;;)
        switch (*++yyp)
          {
          case '\'':
          case ',':
            goto do_not_strip_quotes;

          case '\\':
            if (*++yyp != '\\')
              goto do_not_strip_quotes;
            /* Fall through.  */
          default:
            if (yyres)
              yyres[yyn] = *yyp;
            yyn++;
            break;

          case '"':
            if (yyres)
              yyres[yyn] = '\0';
            return yyn;
          }
    do_not_strip_quotes: ;
    }

  if (! yyres)
    return yystrlen (yystr);

  return yystpcpy (yyres, yystr) - yyres;
}
# endif

/* Copy into *YYMSG, which is of size *YYMSG_ALLOC, an error message
   about the unexpected token YYTOKEN for the state stack whose top is
   YYSSP.

   Return 0 if *YYMSG was successfully written.  Return 1 if *YYMSG is
   not large enough to hold the message.  In that case, also set
   *YYMSG_ALLOC to the required number of bytes.  Return 2 if the
   required number of bytes is too large to store.  */
static int
yysyntax_error (YYSIZE_T *yymsg_alloc, char **yymsg,
                yytype_int16 *yyssp, int yytoken)
{
  YYSIZE_T yysize0 = yytnamerr (YY_NULLPTR, yytname[yytoken]);
  YYSIZE_T yysize = yysize0;
  enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };
  /* Internationalized format string. */
  const char *yyformat = YY_NULLPTR;
  /* Arguments of yyformat. */
  char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
  /* Number of reported tokens (one for the "unexpected", one per
     "expected"). */
  int yycount = 0;

  /* There are many possibilities here to consider:
     - If this state is a consistent state with a default action, then
       the only way this function was invoked is if the default action
       is an error action.  In that case, don't check for expected
       tokens because there are none.
     - The only way there can be no lookahead present (in yychar) is if
       this state is a consistent state with a default action.  Thus,
       detecting the absence of a lookahead is sufficient to determine
       that there is no unexpected or expected token to report.  In that
       case, just report a simple "syntax error".
     - Don't assume there isn't a lookahead just because this state is a
       consistent state with a default action.  There might have been a
       previous inconsistent state, consistent state with a non-default
       action, or user semantic action that manipulated yychar.
     - Of course, the expected token list depends on states to have
       correct lookahead information, and it depends on the parser not
       to perform extra reductions after fetching a lookahead from the
       scanner and before detecting a syntax error.  Thus, state merging
       (from LALR or IELR) and default reductions corrupt the expected
       token list.  However, the list is correct for canonical LR with
       one exception: it will still contain any token that will not be
       accepted due to an error action in a later state.
  */
  if (yytoken != YYEMPTY)
    {
      int yyn = yypact[*yyssp];
      yyarg[yycount++] = yytname[yytoken];
      if (!yypact_value_is_default (yyn))
        {
          /* Start YYX at -YYN if negative to avoid negative indexes in
             YYCHECK.  In other words, skip the first -YYN actions for
             this state because they are default actions.  */
          int yyxbegin = yyn < 0 ? -yyn : 0;
          /* Stay within bounds of both yycheck and yytname.  */
          int yychecklim = YYLAST - yyn + 1;
          int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
          int yyx;

          for (yyx = yyxbegin; yyx < yyxend; ++yyx)
            if (yycheck[yyx + yyn] == yyx && yyx != YYTERROR
                && !yytable_value_is_error (yytable[yyx + yyn]))
              {
                if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
                  {
                    yycount = 1;
                    yysize = yysize0;
                    break;
                  }
                yyarg[yycount++] = yytname[yyx];
                {
                  YYSIZE_T yysize1 = yysize + yytnamerr (YY_NULLPTR, yytname[yyx]);
                  if (! (yysize <= yysize1
                         && yysize1 <= YYSTACK_ALLOC_MAXIMUM))
                    return 2;
                  yysize = yysize1;
                }
              }
        }
    }

  switch (yycount)
    {
# define YYCASE_(N, S)                      \
      case N:                               \
        yyformat = S;                       \
      break
      YYCASE_(0, YY_("syntax error"));
      YYCASE_(1, YY_("syntax error, unexpected %s"));
      YYCASE_(2, YY_("syntax error, unexpected %s, expecting %s"));
      YYCASE_(3, YY_("syntax error, unexpected %s, expecting %s or %s"));
      YYCASE_(4, YY_("syntax error, unexpected %s, expecting %s or %s or %s"));
      YYCASE_(5, YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s"));
# undef YYCASE_
    }

  {
    YYSIZE_T yysize1 = yysize + yystrlen (yyformat);
    if (! (yysize <= yysize1 && yysize1 <= YYSTACK_ALLOC_MAXIMUM))
      return 2;
    yysize = yysize1;
  }

  if (*yymsg_alloc < yysize)
    {
      *yymsg_alloc = 2 * yysize;
      if (! (yysize <= *yymsg_alloc
             && *yymsg_alloc <= YYSTACK_ALLOC_MAXIMUM))
        *yymsg_alloc = YYSTACK_ALLOC_MAXIMUM;
      return 1;
    }

  /* Avoid sprintf, as that infringes on the user's name space.
     Don't have undefined behavior even if the translation
     produced a string with the wrong number of "%s"s.  */
  {
    char *yyp = *yymsg;
    int yyi = 0;
    while ((*yyp = *yyformat) != '\0')
      if (*yyp == '%' && yyformat[1] == 's' && yyi < yycount)
        {
          yyp += yytnamerr (yyp, yyarg[yyi++]);
          yyformat += 2;
        }
      else
        {
          yyp++;
          yyformat++;
        }
  }
  return 0;
}
#endif /* YYERROR_VERBOSE */

/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep)
{
  YYUSE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yytype, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YYUSE (yytype);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}




/* The lookahead symbol.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Number of syntax errors so far.  */
int yynerrs;


/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    int yystate;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus;

    /* The stacks and their tools:
       'yyss': related to states.
       'yyvs': related to semantic values.

       Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* The state stack.  */
    yytype_int16 yyssa[YYINITDEPTH];
    yytype_int16 *yyss;
    yytype_int16 *yyssp;

    /* The semantic value stack.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs;
    YYSTYPE *yyvsp;

    YYSIZE_T yystacksize;

  int yyn;
  int yyresult;
  /* Lookahead token as an internal (translated) token number.  */
  int yytoken = 0;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;

#if YYERROR_VERBOSE
  /* Buffer for error messages, and its allocated size.  */
  char yymsgbuf[128];
  char *yymsg = yymsgbuf;
  YYSIZE_T yymsg_alloc = sizeof yymsgbuf;
#endif

#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  yyssp = yyss = yyssa;
  yyvsp = yyvs = yyvsa;
  yystacksize = YYINITDEPTH;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yystate = 0;
  yyerrstatus = 0;
  yynerrs = 0;
  yychar = YYEMPTY; /* Cause a token to be read.  */
  goto yysetstate;

/*------------------------------------------------------------.
| yynewstate -- Push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
 yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;

 yysetstate:
  *yyssp = yystate;

  if (yyss + yystacksize - 1 <= yyssp)
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYSIZE_T yysize = yyssp - yyss + 1;

#ifdef yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        YYSTYPE *yyvs1 = yyvs;
        yytype_int16 *yyss1 = yyss;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * sizeof (*yyssp),
                    &yyvs1, yysize * sizeof (*yyvsp),
                    &yystacksize);

        yyss = yyss1;
        yyvs = yyvs1;
      }
#else /* no yyoverflow */
# ifndef YYSTACK_RELOCATE
      goto yyexhaustedlab;
# else
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        goto yyexhaustedlab;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yytype_int16 *yyss1 = yyss;
        union yyalloc *yyptr =
          (union yyalloc *) YYSTACK_ALLOC (YYSTACK_BYTES (yystacksize));
        if (! yyptr)
          goto yyexhaustedlab;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
#  undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif
#endif /* no yyoverflow */

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YYDPRINTF ((stderr, "Stack size increased to %lu\n",
                  (unsigned long int) yystacksize));

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }

  YYDPRINTF ((stderr, "Entering state %d\n", yystate));

  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;

/*-----------.
| yybackup.  |
`-----------*/
yybackup:

  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either YYEMPTY or YYEOF or a valid lookahead symbol.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token: "));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = yytoken = YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);

  /* Discard the shifted token.  */
  yychar = YYEMPTY;

  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- Do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
        case 2:
#line 56 "src/parser.y" /* yacc.c:1646  */
    {
        ast.setRoot((yyvsp[0].stmttype));
    }
#line 1371 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 3:
#line 61 "src/parser.y" /* yacc.c:1646  */
    {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1377 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 4:
#line 62 "src/parser.y" /* yacc.c:1646  */
    {
        (yyval.stmttype) = new SeqNode((yyvsp[-1].stmttype), (yyvsp[0].stmttype));
    }
#line 1385 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 5:
#line 67 "src/parser.y" /* yacc.c:1646  */
    {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1391 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 6:
#line 68 "src/parser.y" /* yacc.c:1646  */
    {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1397 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 7:
#line 69 "src/parser.y" /* yacc.c:1646  */
    {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1403 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 8:
#line 70 "src/parser.y" /* yacc.c:1646  */
    {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1409 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 9:
#line 71 "src/parser.y" /* yacc.c:1646  */
    {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1415 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 10:
#line 72 "src/parser.y" /* yacc.c:1646  */
    {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1421 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 11:
#line 73 "src/parser.y" /* yacc.c:1646  */
    {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1427 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 12:
#line 74 "src/parser.y" /* yacc.c:1646  */
    {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1433 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 13:
#line 75 "src/parser.y" /* yacc.c:1646  */
    {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1439 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 14:
#line 80 "src/parser.y" /* yacc.c:1646  */
    {
    	SymbolEntry *se;
        se=identifiers->lookup((yyvsp[0].strtype));
        if(se!=nullptr && ((IdentifierSymbolEntry*)se)->getScope()==identifiers->getLevel())
        {
            fprintf(stderr, "identifier \"%s\" has already been defined\n", (char*)(yyvsp[0].strtype));
        }
        se = new IdentifierSymbolEntry(TypeSystem::voidType, (yyvsp[0].strtype), identifiers->getLevel());
        identifiers->install((yyvsp[0].strtype), se);
        std::queue<SymbolEntry*> idlist;
        idlist.push(se);
        (yyval.idlist) = new IDList(idlist);
    }
#line 1457 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 15:
#line 93 "src/parser.y" /* yacc.c:1646  */
    {
    	SymbolEntry *se;
        se=identifiers->lookup((yyvsp[0].strtype));
        if(se!=nullptr && ((IdentifierSymbolEntry*)se)->getScope()==identifiers->getLevel())
        {
            fprintf(stderr, "identifier \"%s\" has already been defined\n", (char*)(yyvsp[0].strtype));
        }
        se = new IdentifierSymbolEntry(TypeSystem::voidType, (yyvsp[0].strtype), identifiers->getLevel());
        identifiers->install((yyvsp[0].strtype), se);
        std::queue<SymbolEntry*> idl = (yyvsp[-2].idlist)->getList();
        idl.push(se);
        (yyval.idlist)=new IDList(idl);
    }
#line 1475 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 16:
#line 109 "src/parser.y" /* yacc.c:1646  */
    {
        SymbolEntry *se = new IdentifierSymbolEntry((yyvsp[-1].type), (yyvsp[0].strtype), identifiers->getLevel());
        
        identifiers->install((yyvsp[0].strtype), se);
        std::queue<SymbolEntry*> idList;
        idList.push(se);
        (yyval.paraList) = new ParaList(idList);
        // delete []$2;
    }
#line 1489 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 17:
#line 119 "src/parser.y" /* yacc.c:1646  */
    {
        SymbolEntry *se = new IdentifierSymbolEntry((yyvsp[-1].type), (yyvsp[0].strtype), identifiers->getLevel());
        identifiers->install((yyvsp[0].strtype), se);
        std::queue<SymbolEntry*> idList = (yyvsp[-3].paraList)->getList();
        idList.push(se);
        (yyval.paraList) = new ParaList(idList);
        // delete []$2;
    }
#line 1502 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 18:
#line 127 "src/parser.y" /* yacc.c:1646  */
    {(yyval.paraList) = new ParaList();}
#line 1508 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 19:
#line 133 "src/parser.y" /* yacc.c:1646  */
    {
        std::queue<ExprNode*> exprlist;
        exprlist.push((yyvsp[0].exprtype));
        (yyval.paraIdList) = new ParaIDList(exprlist);
        // delete []$2;
    }
#line 1519 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 20:
#line 140 "src/parser.y" /* yacc.c:1646  */
    {
        std::queue<ExprNode*> exprlist=(yyvsp[-2].paraIdList)->getList();
        exprlist.push((yyvsp[0].exprtype));
        (yyval.paraIdList) = new ParaIDList(exprlist);
        // delete []$2;
    }
#line 1530 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 21:
#line 146 "src/parser.y" /* yacc.c:1646  */
    {(yyval.paraIdList) = new ParaIDList();}
#line 1536 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 22:
#line 151 "src/parser.y" /* yacc.c:1646  */
    {
        SymbolEntry *se;
        se=identifiers->lookup((yyvsp[-2].strtype));
        if(se!=nullptr && ((IdentifierSymbolEntry*)se)->getScope()==identifiers->getLevel())
        {
            fprintf(stderr, "identifier \"%s\" has already been defined\n", (char*)(yyvsp[-2].strtype));
        }
        se = new IdentifierSymbolEntry(TypeSystem::intType, (yyvsp[-2].strtype), identifiers->getLevel());
        identifiers->install((yyvsp[-2].strtype), se);
        std::queue<SymbolEntry*> idList;
        std::queue<ExprNode*> nums;
        idList.push(se);
        nums.push((yyvsp[0].exprtype));
        (yyval.initIdList) = new InitIDList(idList, nums);
        delete (yyvsp[-2].strtype);
    }
#line 1557 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 23:
#line 168 "src/parser.y" /* yacc.c:1646  */
    {
        SymbolEntry *se;
        se=identifiers->lookup((yyvsp[-2].strtype));
        if(se!=nullptr && ((IdentifierSymbolEntry*)se)->getScope()==identifiers->getLevel())
        {
            fprintf(stderr, "identifier \"%s\" has already been defined\n", (char*)(yyvsp[-2].strtype));
        }
        se = new IdentifierSymbolEntry(TypeSystem::intType, (yyvsp[-2].strtype), identifiers->getLevel());
        identifiers->install((yyvsp[-2].strtype), se);
        std::queue<SymbolEntry*> *idList = (yyvsp[-4].initIdList)->getList();
        std::queue<ExprNode*> *nums = (yyvsp[-4].initIdList)->getNums();
        idList->push(se);
        nums->push((yyvsp[0].exprtype));
        (yyval.initIdList) = new InitIDList(*idList, *nums);
        delete (yyvsp[-2].strtype);
    }
#line 1578 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 24:
#line 187 "src/parser.y" /* yacc.c:1646  */
    {
        (yyvsp[-1].initIdList)->setType((yyvsp[-2].type));
        (yyval.stmttype) = new InitStmt((yyvsp[-1].initIdList));
        // delete []$2;
    }
#line 1588 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 25:
#line 195 "src/parser.y" /* yacc.c:1646  */
    {
        SymbolEntry *se;
        se = identifiers->lookup((yyvsp[0].strtype));
        if(se == nullptr)
        {
            fprintf(stderr, "identifier \"%s\" is undefined\n", (char*)(yyvsp[0].strtype));
            delete [](char*)(yyvsp[0].strtype);
            assert(se != nullptr);
        }
        (yyval.exprtype) = new Id(se);
        delete [](yyvsp[0].strtype);
    }
#line 1605 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 26:
#line 210 "src/parser.y" /* yacc.c:1646  */
    {
        (yyval.stmttype) = new AssignStmt((yyvsp[-3].exprtype), (yyvsp[-1].exprtype));
    }
#line 1613 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 27:
#line 217 "src/parser.y" /* yacc.c:1646  */
    {identifiers = new SymbolTable(identifiers);}
#line 1619 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 28:
#line 219 "src/parser.y" /* yacc.c:1646  */
    {
            (yyval.stmttype) = new CompoundStmt((yyvsp[-1].stmttype));
            SymbolTable *top = identifiers;
            identifiers = identifiers->getPrev();
            delete top;
        }
#line 1630 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 29:
#line 226 "src/parser.y" /* yacc.c:1646  */
    {
        (yyval.stmttype) = new CompoundStmt();
    }
#line 1638 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 30:
#line 231 "src/parser.y" /* yacc.c:1646  */
    {
        (yyval.stmttype) = new IfStmt((yyvsp[-2].exprtype), (yyvsp[0].stmttype));
    }
#line 1646 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 31:
#line 234 "src/parser.y" /* yacc.c:1646  */
    {
        (yyval.stmttype) = new IfElseStmt((yyvsp[-4].exprtype), (yyvsp[-2].stmttype), (yyvsp[0].stmttype));
    }
#line 1654 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 32:
#line 239 "src/parser.y" /* yacc.c:1646  */
    {
    	(yyval.stmttype) = new WhileStmt((yyvsp[-2].exprtype), (yyvsp[0].stmttype));
    }
#line 1662 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 33:
#line 245 "src/parser.y" /* yacc.c:1646  */
    {
        Type *retType=(yyvsp[-1].exprtype)->getSymPtr()->getType();
        if(retType->isFunc() && ((FunctionType*)retType)->getRetType()!=funcionRetType){
            fprintf(stderr, "the return_type of \"%s\" is wrong\n", funcName.c_str());
        }
        else if(retType!=funcionRetType){
            fprintf(stderr, "the return_type of \"%s\" is wrong\n", funcName.c_str());
        }
        (yyval.stmttype) = new ReturnStmt((yyvsp[-1].exprtype));
    }
#line 1677 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 34:
#line 258 "src/parser.y" /* yacc.c:1646  */
    {(yyval.exprtype) = (yyvsp[0].exprtype);}
#line 1683 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 35:
#line 262 "src/parser.y" /* yacc.c:1646  */
    {(yyval.exprtype)=(yyvsp[0].exprtype);}
#line 1689 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 36:
#line 266 "src/parser.y" /* yacc.c:1646  */
    {(yyval.itype)=(yyvsp[0].itype);}
#line 1695 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 37:
#line 268 "src/parser.y" /* yacc.c:1646  */
    {(yyval.itype)=(yyvsp[0].itype);}
#line 1701 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 38:
#line 270 "src/parser.y" /* yacc.c:1646  */
    {(yyval.itype)=(yyvsp[0].itype);}
#line 1707 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 39:
#line 274 "src/parser.y" /* yacc.c:1646  */
    {(yyval.exprtype)=(yyvsp[-1].exprtype);}
#line 1713 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 40:
#line 276 "src/parser.y" /* yacc.c:1646  */
    {
        (yyval.exprtype) = (yyvsp[0].exprtype);
    }
#line 1721 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 41:
#line 279 "src/parser.y" /* yacc.c:1646  */
    {
        SymbolEntry *se = new ConstantSymbolEntry(TypeSystem::intType, (yyvsp[0].itype));
        (yyval.exprtype) = new Constant(se);
    }
#line 1730 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 42:
#line 283 "src/parser.y" /* yacc.c:1646  */
    {
    	(yyval.exprtype)=(yyvsp[0].exprtype);
    }
#line 1738 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 43:
#line 289 "src/parser.y" /* yacc.c:1646  */
    {(yyval.exprtype) = (yyvsp[0].exprtype);}
#line 1744 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 44:
#line 291 "src/parser.y" /* yacc.c:1646  */
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
        (yyval.exprtype) = new SingelExpr(se, SingelExpr::NOT, (yyvsp[0].exprtype));        
    }
#line 1753 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 45:
#line 296 "src/parser.y" /* yacc.c:1646  */
    {

        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new SingelExpr(se, SingelExpr::POS, (yyvsp[0].exprtype));  
    }
#line 1763 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 46:
#line 302 "src/parser.y" /* yacc.c:1646  */
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new SingelExpr(se, SingelExpr::MIN, (yyvsp[0].exprtype));  
    }
#line 1772 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 47:
#line 309 "src/parser.y" /* yacc.c:1646  */
    {(yyval.exprtype)=(yyvsp[0].exprtype);}
#line 1778 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 48:
#line 312 "src/parser.y" /* yacc.c:1646  */
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::MUL, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1787 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 49:
#line 318 "src/parser.y" /* yacc.c:1646  */
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::DIV, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1796 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 50:
#line 324 "src/parser.y" /* yacc.c:1646  */
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::MOD, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1805 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 51:
#line 331 "src/parser.y" /* yacc.c:1646  */
    {(yyval.exprtype)=(yyvsp[0].exprtype);}
#line 1811 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 52:
#line 334 "src/parser.y" /* yacc.c:1646  */
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::ADD, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1820 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 53:
#line 340 "src/parser.y" /* yacc.c:1646  */
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::SUB, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1829 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 54:
#line 347 "src/parser.y" /* yacc.c:1646  */
    {(yyval.exprtype) = (yyvsp[0].exprtype);}
#line 1835 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 55:
#line 350 "src/parser.y" /* yacc.c:1646  */
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::LESSEQ, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1844 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 56:
#line 356 "src/parser.y" /* yacc.c:1646  */
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::MOREEQ, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1853 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 57:
#line 362 "src/parser.y" /* yacc.c:1646  */
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::LESS, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1862 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 58:
#line 368 "src/parser.y" /* yacc.c:1646  */
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::MORE, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1871 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 59:
#line 374 "src/parser.y" /* yacc.c:1646  */
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::EQUAL, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1880 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 60:
#line 380 "src/parser.y" /* yacc.c:1646  */
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::NOTEQUAL, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1889 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 61:
#line 387 "src/parser.y" /* yacc.c:1646  */
    {(yyval.exprtype) = (yyvsp[0].exprtype);}
#line 1895 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 62:
#line 390 "src/parser.y" /* yacc.c:1646  */
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::AND, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1904 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 63:
#line 397 "src/parser.y" /* yacc.c:1646  */
    {(yyval.exprtype) = (yyvsp[0].exprtype);}
#line 1910 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 64:
#line 400 "src/parser.y" /* yacc.c:1646  */
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::OR, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1919 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 65:
#line 407 "src/parser.y" /* yacc.c:1646  */
    {
        (yyval.type)=TypeSystem::constintType;
    }
#line 1927 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 66:
#line 410 "src/parser.y" /* yacc.c:1646  */
    {
        (yyval.type) = TypeSystem::intType;
    }
#line 1935 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 67:
#line 413 "src/parser.y" /* yacc.c:1646  */
    {
        (yyval.type) = TypeSystem::voidType;
    }
#line 1943 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 68:
#line 420 "src/parser.y" /* yacc.c:1646  */
    {
    	(yyval.stmttype) = new ExprStmt((yyvsp[-1].exprtype));  
    }
#line 1951 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 69:
#line 424 "src/parser.y" /* yacc.c:1646  */
    {
        (yyval.stmttype) = new ExprStmt();
    }
#line 1959 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 70:
#line 430 "src/parser.y" /* yacc.c:1646  */
    {
        SymbolEntry *se;
        se = identifiers->lookup((yyvsp[-3].strtype));
        if(se == nullptr)
        {
            fprintf(stderr, "function \"%s\" is undefined\n", (char*)(yyvsp[-3].strtype));
            delete [](char*)(yyvsp[-3].strtype);
            assert(se != nullptr);
        }
        Type *type=se->getType();
        std::vector<Type*> paramsType=((FunctionType*)type)->getParaType();
        std::vector<Type*> newParamsType;
        std::queue<ExprNode*> idList = (yyvsp[-1].paraIdList)->getList();
        while(!idList.empty()){
            ExprNode *se0=idList.front();
            Type *t=se0->getSymPtr()->getType();
            newParamsType.emplace_back(t);
            idList.pop();
        }
        if(newParamsType!=paramsType){
            fprintf(stderr, "the params of \"%s\" is wrong\n", (char*)(yyvsp[-3].strtype));
        }
    	(yyval.exprtype) = new FuncExpr(se, (yyvsp[-1].paraIdList));
        delete [](yyvsp[-3].strtype);   
    }
#line 1989 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 71:
#line 459 "src/parser.y" /* yacc.c:1646  */
    {
        funcionRetType=(yyvsp[-4].type);
        funcName=(yyvsp[-3].strtype);
        Type *funcType;
        std::vector<Type*> paramsType;
        std::queue<SymbolEntry*> idList = (yyvsp[-1].paraList)->getList();
        while(!idList.empty()){
            SymbolEntry *se0=idList.front();
            Type *t=se0->getType();
            paramsType.emplace_back(t);
            idList.pop();
        }
        funcType = new FunctionType((yyvsp[-4].type),paramsType);
        SymbolEntry *se = new IdentifierSymbolEntry(funcType, (yyvsp[-3].strtype), identifiers->getLevel());
        identifiers->install((yyvsp[-3].strtype), se);
        identifiers = new SymbolTable(identifiers);
    }
#line 2011 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 72:
#line 477 "src/parser.y" /* yacc.c:1646  */
    {   
        SymbolEntry *se;
        se = identifiers->lookup((yyvsp[-5].strtype));
        (yyval.stmttype) = new FunctionDef(se, (yyvsp[-3].paraList), (yyvsp[0].stmttype));
        SymbolTable *top = identifiers;
        identifiers = identifiers->getPrev();
        delete top;
        delete [](yyvsp[-5].strtype);
    }
#line 2025 "src/parser.cpp" /* yacc.c:1646  */
    break;

  case 73:
#line 490 "src/parser.y" /* yacc.c:1646  */
    {
        (yyvsp[-1].idlist)->setType((yyvsp[-2].type));
        (yyval.stmttype) = new DeclStmt((yyvsp[-1].idlist));
        //delete []$2;
    }
#line 2035 "src/parser.cpp" /* yacc.c:1646  */
    break;


#line 2039 "src/parser.cpp" /* yacc.c:1646  */
      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", yyr1[yyn], &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);

  *++yyvsp = yyval;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */

  yyn = yyr1[yyn];

  yystate = yypgoto[yyn - YYNTOKENS] + *yyssp;
  if (0 <= yystate && yystate <= YYLAST && yycheck[yystate] == *yyssp)
    yystate = yytable[yystate];
  else
    yystate = yydefgoto[yyn - YYNTOKENS];

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYEMPTY : YYTRANSLATE (yychar);

  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
#if ! YYERROR_VERBOSE
      yyerror (YY_("syntax error"));
#else
# define YYSYNTAX_ERROR yysyntax_error (&yymsg_alloc, &yymsg, \
                                        yyssp, yytoken)
      {
        char const *yymsgp = YY_("syntax error");
        int yysyntax_error_status;
        yysyntax_error_status = YYSYNTAX_ERROR;
        if (yysyntax_error_status == 0)
          yymsgp = yymsg;
        else if (yysyntax_error_status == 1)
          {
            if (yymsg != yymsgbuf)
              YYSTACK_FREE (yymsg);
            yymsg = (char *) YYSTACK_ALLOC (yymsg_alloc);
            if (!yymsg)
              {
                yymsg = yymsgbuf;
                yymsg_alloc = sizeof yymsgbuf;
                yysyntax_error_status = 2;
              }
            else
              {
                yysyntax_error_status = YYSYNTAX_ERROR;
                yymsgp = yymsg;
              }
          }
        yyerror (yymsgp);
        if (yysyntax_error_status == 2)
          goto yyexhaustedlab;
      }
# undef YYSYNTAX_ERROR
#endif
    }



  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:

  /* Pacify compilers like GCC when the user code never invokes
     YYERROR and the label yyerrorlab therefore never appears in user
     code.  */
  if (/*CONSTCOND*/ 0)
     goto yyerrorlab;

  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYTERROR;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYTERROR)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;


      yydestruct ("Error: popping",
                  yystos[yystate], yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", yystos[yyn], yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturn;

/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturn;

#if !defined yyoverflow || YYERROR_VERBOSE
/*-------------------------------------------------.
| yyexhaustedlab -- memory exhaustion comes here.  |
`-------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  /* Fall through.  */
#endif

yyreturn:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  yystos[*yyssp], yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif
#if YYERROR_VERBOSE
  if (yymsg != yymsgbuf)
    YYSTACK_FREE (yymsg);
#endif
  return yyresult;
}
#line 496 "src/parser.y" /* yacc.c:1906  */


int yyerror(char const* message)
{
    std::cerr<<message<<std::endl;
    std::cout<<yytext<<std::endl;
    std::cout<<yylineno<<std::endl;
    return -1;
}
