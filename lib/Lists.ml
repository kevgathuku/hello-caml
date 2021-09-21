open Core
open Format

(* Works on int list only for now, due to the = operator *)
let rec remove_sequential_duplicates list =
  match list with
  | [] as l -> l
  | [ _ ] as l -> l
  | hd :: (hd' :: _ as tl) ->
      if hd = hd' then remove_sequential_duplicates tl
      else hd :: remove_sequential_duplicates tl

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

(* Imperative summing of elements in a list *)
let sum list =
  let counter = ref 0 in
  List.iter list ~f:(fun x -> counter := !counter + x);
  !counter
