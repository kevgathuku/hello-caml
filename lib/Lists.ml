open Core

(* Works on int list only for now, due to the = operator *)
let rec remove_sequential_duplicates list =
  match list with
  | [] as l -> l
  | [ _ ] as l -> l
  | hd :: (hd' :: _ as tl) ->
      if hd = hd' then remove_sequential_duplicates tl
      else hd :: remove_sequential_duplicates tl

let print_list ~stringify lst = List.fold ~init:"" ~f:(fun acc x -> acc ^ stringify x ^ "; ") lst

(* Imperative summing of elements in a list *)
let sum list =
  let counter = ref 0 in
  List.iter list ~f:(fun x -> counter := !counter + x);
  !counter

(* Recursive functions *)
let rec find_first_repeat list =
  match list with
  | [] | [ _ ] -> None
  | x :: y :: tl -> if x = y then Some x else find_first_repeat (y :: tl)
;;

(* Partial function application.
   (+) applied to 3 and can take more arguments *)
List.map ~f:(( + ) 3) [ 4; 5; 6 ]
