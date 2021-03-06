open Ast
let rec print_prolog e =
  match e with
    ASTNum n -> Printf.printf"%d" n
  | ASTId x -> Printf.printf"\"%s\"" x
  | ASTPrim(op, e1, e2) -> (
    Printf.printf"%s" (string_of_op op);
    Printf.printf"(";
    print_prolog e1;
    Printf.printf",";
    print_prolog e2;
    Printf.printf")"
  )
  | ASTPrimUnaire(op_unaire, e1) -> (
    Printf.printf"%s" (string_of_op_unaire op_unaire);
    Printf.printf"(";
    print_prolog e1;
    Printf.printf")"
  )
  | ASTBool(booleen) -> (
    Printf.printf"%s" (string_of_booleen booleen);
  )
let _ =
try
let lexbuf = Lexing.from_channel stdin in
let e = Parser.line Lexer.token lexbuf in
print_prolog e;
print_char '\n'
with Lexer.Eof -> exit 0
		       
