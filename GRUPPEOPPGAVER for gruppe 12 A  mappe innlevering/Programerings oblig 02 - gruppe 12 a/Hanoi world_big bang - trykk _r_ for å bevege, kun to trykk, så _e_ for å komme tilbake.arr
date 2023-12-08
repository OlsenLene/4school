use context essentials2021
include world


fun draw-INITIAL-WORLD(w):
 

Stick1 = circle(5, "solid","black")
Stick2 = circle(5, "solid","black")
Stick3 = circle(5, "solid","black")
  Base = rectangle(330, 120, "solid", "pink")

Orange-xl = circle(40, "solid","Orange")
Blue-large = circle(30, "solid","blue")
Green-medium = circle(20, "solid","green")
Red-small = circle(10, "solid","red")

INITIAL-WORLD =
   
overlay-xy(Stick1, -65, -55,
   overlay-xy(Red-small, -60 + w, -50,
    overlay-xy(Green-medium, -50, -40,
      overlay-xy(Blue-large, -40, -30,
        overlay-xy(Orange-xl, -30, -20,
          overlay-xy(Stick2, -165, -55,
            overlay-xy(Stick3, -265, -55,
                  overlay-xy(Base, 0, 0, (empty-scene(200 + w, 120))))))))))
  INITIAL-WORLD
end
  
fun move-Red-small-on-key(w, ke):
  doc: ```moves circle by 100 units to the right when pressed 'r', 
       moves back to the initial position when any key is pressed
       or the circle reaches the right border of the scene (w=200)```
  if (ke == "r") and (w < 200):
    -100 + w
    else:
    0 
  end
  where:
move-Red-small-on-key(-100, "r") is -200
  move-Red-small-on-key(200, "r") is 0
move-Red-small-on-key(100, "q") is 0
end


big-bang(0, [list: to-draw(draw-INITIAL-WORLD), on-key(move-Red-small-on-key)])
