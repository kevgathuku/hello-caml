type point2d = { x : float; y : float }

let p = { x = 3.; y = -4. }

let print_point { x; y } =
  print_string
    ("{ x: " ^ string_of_float x ^ " y: " ^ string_of_float y ^ " }\n")

let magnitude { x; y } = sqrt ((x ** 2.) +. (y ** 2.))

let distance v1 v2 = magnitude { x = v1.x -. v2.x; y = v1.y -. v2.y }

type circle_desc = { center : point2d; radius : float }

type rect_desc = { lower_left : point2d; width : float; height : float }

type scene_element = Circle of circle_desc | Rect of rect_desc

let is_inside_scene_element point scene_element =
  match scene_element with
  | Circle { center; radius } -> distance center point < radius
  | Rect { lower_left; width; height } ->
      point.x > lower_left.x
      && point.x < lower_left.x +. width
      && point.y > lower_left.y
      && point.y < lower_left.y +. height

let is_inside_scene point scene =
  List.exists (fun el -> is_inside_scene_element point el) scene
