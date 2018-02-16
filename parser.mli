type token =
  | NUM of (int)
  | IDENT of (string)
  | PLUS
  | MINUS
  | TIMES
  | DIV
  | CONSTANT
  | FUNCTION
  | RECURSION
  | ECHO
  | BOOL
  | INT
  | TRUE
  | FALSE
  | NOT
  | AND
  | OR
  | EQ
  | LT
  | IF
  | LPAR
  | RPAR
  | LBRAC
  | RBRAC
  | SEMICOL
  | COMMA
  | STAR
  | FLECHE
  | EOL

val line :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Ast.expr
