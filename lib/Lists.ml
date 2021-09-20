open Core
open Format

(* Works on int list only for now, due to the = operator *)
let rec destutter list =
  match list with
  | [] as l -> l
  | [ _ ] as l -> l
  | hd :: (hd' :: _ as tl) ->
      if hd = hd' then destutter tl else hd :: destutter tl

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
