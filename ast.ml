type op = Add | Mul | Sub | Div | And | Or | Eq | Lt
type op_unaire = Not | Echo
		   
let string_of_op op =
match op with
Add -> "add"
| Mul -> "mul"
| Sub -> "sub"
| Div -> "div"
| And -> "and"
| Or -> "or"
| Eq -> "eq"
| Lt -> "lt"

let string_of_op_unaire op_unaire =
  match op_unaire with
    Not -> "not"
  | Echo -> "echo"
	  
let op_of_string op =
  match op with
    "add" -> Add
  | "mul" -> Mul
  | "sub" -> Sub
  | "div" -> Div
  | "and" -> And
  | "or" -> Or
  | "eq" -> Eq
  | "lt" -> Lt

let op_unaire_of_string op_unaire =
  match op_unaire with
    "not" -> Not
  | "echo" -> Echo
	    
type expr =
ASTNum of int
| ASTId of string
| ASTPrim of op * expr * expr
| ASTPrimUnaire of op_unaire * expr
