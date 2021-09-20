open Core
open Format
open Lib.Lists
open Lib.Variants;;

(* Print a msg from a reason lib *)
print_endline Lib.Hello.normal_greeting

(* Destutter Works on int list only for now, due to the = operator *)
let duplicates = [ 1; 2; 2; 3; 4; 4; 4; 5 ];;

print_list print_int (destutter duplicates)
