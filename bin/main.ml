open Core
open Format;;

(* Print a msg from a reason lib *)
print_endline Lib.Hello.normal_greeting

let rec destutter list =
  match list with
  | [] as l -> l
  | [ _ ] as l -> l
  | hd :: (hd' :: _ as tl) ->
      if hd = hd' then destutter tl else hd :: destutter tl

(* Works on int list only for now, due to the = operator *)
let result = destutter [ 1; 2; 2; 3; 4; 4; 4; 5 ]

let print_list f lst =
  let rec print_elements = function
    | [] -> ()
    | h :: t ->
        f h;
        print_string ";";
        print_elements t
  in
  print_string "[";
  print_elements lst;
  print_string "] \n"
;;

print_list print_int result
