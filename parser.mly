%{
open Ast
%}
%token <int> NUM
%token <string> IDENT
%token PLUS MINUS TIMES DIV
%token CONSTANT FUNCTION RECURSION ECHO BOOL INT TRUE FALSE NOT AND OR EQ LT IF
%token LPAR RPAR
%token LBRAC RBRAC SEMICOL COMMA STAR FLECHE
%token EOL
%start line /* the entry point */
%type <Ast.expr> line
%%
line:
expr EOL { $1 }
    ; 
expr:
NUM { ASTNum($1) }
| IDENT { ASTId($1) }
| TRUE  { ASTBool(Ast.True) }
| FALSE  { ASTBool(Ast.False) }
| LPAR PLUS expr expr RPAR { ASTPrim(Ast.Add, $3, $4) }
| LPAR MINUS expr expr RPAR { ASTPrim(Ast.Sub, $3, $4) }
| LPAR TIMES expr expr RPAR { ASTPrim(Ast.Mul, $3, $4) }
| LPAR DIV expr expr RPAR { ASTPrim(Ast.Div, $3, $4) }
| LPAR EQ expr expr RPAR { ASTPrim(Ast.Eq, $3, $4) }
| LPAR AND expr expr RPAR { ASTPrim(Ast.And, $3, $4) }
| LPAR OR expr expr RPAR { ASTPrim(Ast.Or, $3, $4) }
| LPAR LT expr expr RPAR { ASTPrim(Ast.Lt, $3, $4) }
| LPAR NOT expr RPAR { ASTPrimUnaire(Ast.Not, $3) }
| LPAR ECHO expr RPAR { ASTPrimUnaire(Ast.Echo, $3) }
;
