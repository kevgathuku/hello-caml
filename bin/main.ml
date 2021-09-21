open Core
open Format
open Lib.Lists
open Lib.Sum
open Lib.Variants;;

(* Print a msg from a reason lib *)
print_endline Lib.Hello.normal_greeting

(* Destutter Works on int list only for now, due to the = operator *)
let duplicates = [ 1; 2; 2; 3; 4; 4; 4; 5 ];;

print_list print_int (remove_sequential_duplicates duplicates)

(* sum a list using imperative code *)
let sum_list = sum (remove_sequential_duplicates duplicates);;

print_endline ("Sum of destuttered list: " ^ string_of_int sum_list);

(* Print a 2d point - custom type *)
print_endline (to_string { x = 3.; y = 5. })

let result_1 =
  is_inside_scene { x = 3.; y = 7. }
    [ Circle { center = { x = 4.; y = 4. }; radius = 0.5 } ]

let result_2 =
  is_inside_scene { x = 3.; y = 7. }
    [ Circle { center = { x = 4.; y = 4. }; radius = 5.0 } ]
;;

print_endline ("Result 1: " ^ string_of_bool result_1);;

print_endline ("Result 2: " ^ string_of_bool result_2)

(* Read & sum numbers from stdin
   Press Ctrl-D to trigger the sum of provided numbers *)
let () = printf "Total: %F\n" (read_and_accumulate 0.)