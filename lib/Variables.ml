open Base
open Stdio

(* Scoped variables *)
let languages = "OCaml,Perl,C++,C"

let dashed_languages =
  let languages = String.split languages ~on:',' in
  String.concat ~sep:"-" languages

let area_of_ring inner_radius outer_radius =
  let pi = Float.pi in
  let area_of_circle r = pi *. r *. r in
  area_of_circle outer_radius -. area_of_circle inner_radius

(* Pattern matching and let *)
let ints, strings = List.unzip [ (1, "one"); (2, "two"); (3, "three") ]

let upcase_first_entry line =
  match String.split ~on:',' line with
  (* assert false marks a case that should be impossible *)
  | [] -> assert false
  | first :: rest -> String.concat ~sep:"," (String.uppercase first :: rest)

(* Anonymous functions *)
let incr_by_1 x = x + 1

let plusone x = x + 1

(* Mutually recursive values *)
let rec is_even x = if x = 0 then true else is_odd (x - 1)

and is_odd x = if x = 0 then false else is_even (x - 1)

let path = "/usr/bin:/usr/local/bin:/bin:/sbin:/usr/bin";;

String.split ~on:':' path
|> List.dedup_and_sort ~compare:String.compare
|> List.iter ~f:print_endline


(* Function syntax, with built in pattern matching *)
let some_or_zero = function
  | Some x -> x
  | None -> 0
;;

(* Optional arguments *)
let concat ?sep x y =
  let sep = match sep with None -> "" | Some x -> x in
  x ^ sep ^ y
;;

(* Optional arguments, with default values *)
let concat' ?(sep="") x y = x ^ sep ^ y ;;

(* Passing an optiona arg to an inner function *)
let uppercase_concat ?sep a b = concat ?sep (String.uppercase a) b ;;