{
open Parser (* The type token is defined in parser.mli *)
exception Eof
}
rule token = parse
[' ' '\t'] { token lexbuf } (* skip blanks *)
| ['\n' ] { EOL }
| ['0'-'9']+('.'['0'-'9'])? as lxm { NUM(int_of_string lxm) }
| "add" { PLUS }
| "sub" { MINUS }
| "mul" { TIMES }
| "div" { DIV }
(* Ajout des nouvelles mots clés de langage *)
| "CONST"  { CONSTANT }
| "FUN"  { FUNCTION }
| "REC"  { RECURSION }
| "echo"  { ECHO }
| "bool"  { BOOL }
| "int"  { INT }
| "true"  { TRUE }
| "false"  { FALSE }
| "not"  { NOT }
| "and"  { AND }
| "or"  { OR }
| "eq"  { EQ }
| "lt"  { LT }
| "if"  { IF }

| '(' { LPAR }
| ')' { RPAR }
(* Ajout des nouvelles symboles réservées*)
| '[' { LBRAC }
| ']' { RBRAC }
| ';' { SEMICOL }
| ',' { COMMA }
| '*' { STAR }
| "->" { FLECHE }

| eof { raise Eof }
