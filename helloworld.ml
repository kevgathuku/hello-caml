Random.self_init ();;

Graphics.open_graph " 640x480";;

for i = 12 downto 1 do
  let radius = i * 20 in
    Graphics.set_color (if i mod 2 = 0 then Graphics.red else Graphics.yellow);
    Graphics.fill_circle 320 240 radius
done;;

read_line ();;
