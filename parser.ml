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

open Parsing;;
let _ = parse_error;;
# 2 "parser.mly"
open Ast
# 37 "parser.ml"
let yytransl_const = [|
  259 (* PLUS *);
  260 (* MINUS *);
  261 (* TIMES *);
  262 (* DIV *);
  263 (* CONSTANT *);
  264 (* FUNCTION *);
  265 (* RECURSION *);
  266 (* ECHO *);
  267 (* BOOL *);
  268 (* INT *);
  269 (* TRUE *);
  270 (* FALSE *);
  271 (* NOT *);
  272 (* AND *);
  273 (* OR *);
  274 (* EQ *);
  275 (* LT *);
  276 (* IF *);
  277 (* LPAR *);
  278 (* RPAR *);
  279 (* LBRAC *);
  280 (* RBRAC *);
  281 (* SEMICOL *);
  282 (* COMMA *);
  283 (* STAR *);
  284 (* FLECHE *);
  285 (* EOL *);
    0|]

let yytransl_block = [|
  257 (* NUM *);
  258 (* IDENT *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\002\000\002\000\002\000\002\000\002\000\002\000\000\000"

let yylen = "\002\000\
\002\000\001\000\001\000\001\000\001\000\005\000\005\000\005\000\
\005\000\005\000\005\000\005\000\005\000\004\000\004\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\002\000\003\000\004\000\005\000\000\000\016\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\015\000\014\000\000\000\000\000\000\000\000\000\
\006\000\007\000\008\000\009\000\011\000\012\000\010\000\013\000"

let yydgoto = "\002\000\
\008\000\009\000"

let yysindex = "\009\000\
\014\255\000\000\000\000\000\000\000\000\000\000\026\255\000\000\
\248\254\014\255\014\255\014\255\014\255\014\255\014\255\014\255\
\014\255\014\255\014\255\000\000\014\255\014\255\014\255\014\255\
\000\255\001\255\014\255\014\255\014\255\014\255\002\255\003\255\
\004\255\011\255\000\000\000\000\012\255\015\255\016\255\017\255\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\246\255"

let yytablesize = 45
let yytable = "\021\000\
\022\000\023\000\024\000\025\000\026\000\027\000\028\000\029\000\
\030\000\001\000\031\000\032\000\033\000\034\000\003\000\004\000\
\037\000\038\000\039\000\040\000\020\000\035\000\036\000\041\000\
\042\000\043\000\005\000\006\000\010\000\011\000\012\000\013\000\
\044\000\045\000\007\000\014\000\046\000\047\000\048\000\000\000\
\015\000\016\000\017\000\018\000\019\000"

let yycheck = "\010\000\
\011\000\012\000\013\000\014\000\015\000\016\000\017\000\018\000\
\019\000\001\000\021\000\022\000\023\000\024\000\001\001\002\001\
\027\000\028\000\029\000\030\000\029\001\022\001\022\001\022\001\
\022\001\022\001\013\001\014\001\003\001\004\001\005\001\006\001\
\022\001\022\001\021\001\010\001\022\001\022\001\022\001\255\255\
\015\001\016\001\017\001\018\001\019\001"

let yynames_const = "\
  PLUS\000\
  MINUS\000\
  TIMES\000\
  DIV\000\
  CONSTANT\000\
  FUNCTION\000\
  RECURSION\000\
  ECHO\000\
  BOOL\000\
  INT\000\
  TRUE\000\
  FALSE\000\
  NOT\000\
  AND\000\
  OR\000\
  EQ\000\
  LT\000\
  IF\000\
  LPAR\000\
  RPAR\000\
  LBRAC\000\
  RBRAC\000\
  SEMICOL\000\
  COMMA\000\
  STAR\000\
  FLECHE\000\
  EOL\000\
  "

let yynames_block = "\
  NUM\000\
  IDENT\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 15 "parser.mly"
         ( _1 )
# 170 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 18 "parser.mly"
    ( ASTNum(_1) )
# 177 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 19 "parser.mly"
        ( ASTId(_1) )
# 184 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 20 "parser.mly"
        ( ASTBool(Ast.True) )
# 190 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 21 "parser.mly"
         ( ASTBool(Ast.False) )
# 196 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 22 "parser.mly"
                           ( ASTPrim(Ast.Add, _3, _4) )
# 204 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 23 "parser.mly"
                            ( ASTPrim(Ast.Sub, _3, _4) )
# 212 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 24 "parser.mly"
                            ( ASTPrim(Ast.Mul, _3, _4) )
# 220 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 25 "parser.mly"
                          ( ASTPrim(Ast.Div, _3, _4) )
# 228 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 26 "parser.mly"
                         ( ASTPrim(Ast.Eq, _3, _4) )
# 236 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 27 "parser.mly"
                          ( ASTPrim(Ast.And, _3, _4) )
# 244 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 28 "parser.mly"
                         ( ASTPrim(Ast.Or, _3, _4) )
# 252 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 29 "parser.mly"
                         ( ASTPrim(Ast.Lt, _3, _4) )
# 260 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 30 "parser.mly"
                     ( ASTPrimUnaire(Ast.Not, _3) )
# 267 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 31 "parser.mly"
                      ( ASTPrimUnaire(Ast.Echo, _3) )
# 274 "parser.ml"
               : 'expr))
(* Entry line *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let line (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Ast.expr)
