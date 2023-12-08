use context essentials2021
Stick1 = circle(5, "solid","black")
Stick2 = circle(5, "solid","black")
Stick3 = circle(5, "solid","black")
Base = empty-scene(330, 120)

orange-xl = circle(40, "solid","Orange")
blue-large = circle(30, "solid","blue")
green-medium = circle(20, "solid","green")
red-small = circle(10, "solid","red")
   
empty-board =
  overlay-xy(Stick1, -65, -55,
 overlay-xy(Stick2, -165, -55,
    overlay-xy(Stick3, -265, -55,
        #|overlay-xy(red-small, -60, -50,
    overlay-xy(green-medium, -50, -40,
      overlay-xy(blue-large, -40, -30,
        overlay-xy(0range-xl, -30, -20,|#
        (Base))))
    
empty-board2 =
        overlay-xy(Stick3, -265, -55,  (Base))

empty-board3 =
  overlay-xy(Stick2, -165, -55, (Base))

hanoi-board = [list:
  [list:
    red-small, 
    green-medium, 
    blue-large, 
    orange-xl],
  [list: ],
  [list: ]]

#gjør ett trekk
hanoi-board-1-3 = [list:
  [list:
   green-medium, 
    blue-large, 
    orange-xl],
  [list: ],
  [list: red-small]]

check:
  hanoi-board.get(0) is [list:
    red-small, 
    green-medium, 
    blue-large, 
    orange-xl]
end

hanoi-board
hanoi-board.get(0)



fun move(fra, til, state): #|-> Image:|#
  if (state.get(fra - 1) == empty):
    raise("illegal move")
  else:
  first = state.get(fra - 1).first #red-small
  rest = state.get(fra - 1).rest  #uten rød
  phase-1 = state.set(fra - 1, rest)
  phase-1.set(til - 1, link(first, phase-1.get(til - 1)))
    
end
end

  #move er ny state, må loggføre



hanoi-board-new-state = move(1, 2, hanoi-board)
hanoi-board-new-state-2 = move(2, 3, hanoi-board-new-state)
hanoi-board-new-state-2
hanoi-board-new-state-3 = move(1, 2, hanoi-board-new-state-2)
hanoi-board-new-state-3
hanoi-board-new-state-4 = move(3, 2, hanoi-board-new-state-3)
hanoi-board-new-state-4
hanoi-board-new-state-5 = move(1, 3, hanoi-board-new-state-4)
hanoi-board-new-state-5
hanoi-board-new-state-6 = move(2, 3, hanoi-board-new-state-5)
hanoi-board-new-state-6
hanoi-board-new-state-7 = move(2, 1, hanoi-board-new-state-6)
hanoi-board-new-state-7

#|overlay(overlay-xy(Stick1, -65, -55,
 overlay-xy(Stick2, -165, -55,
      overlay-xy(Stick3, -265, -55,
        overlay-xy(red-small, -60, -50,
          overlay-xy(green-medium, -50, -40,
            overlay-xy(blue-large, -40, -30,
              overlay-xy(orange-xl, -30, -20,
                (Base)))))))))|#

#|overlay(overlay(overlay(overlay(circle(5, "solid", "black", (hanoi-board.get(0).get(0), hanoi-board.get(0).get(1)), hanoi-board.get(0).get(2)), hanoi-board.get(0).get(3)),empty-board)))|#


overlay(overlay(overlay(hanoi-board.get(0).get(0), hanoi-board.get(0).get(1)), hanoi-board.get(0).get(2)), hanoi-board.get(0).get(3))

overlay(overlay(overlay(hanoi-board.get(0).get(0), hanoi-board.get(0).get(1)), hanoi-board.get(0).get(2)), hanoi-board.get(0).get(3))


overlay(overlay(overlay(overlay(empty-board, hanoi-board.get(0).get(0)), hanoi-board.get(0).get(1)), hanoi-board.get(0).get(2)), hanoi-board.get(0).get(3))

overlay(overlay(overlay(overlay(overlay(empty-board, 
        hanoi-board-new-state-2.get(0).get(0)),
      hanoi-board-new-state-2.get(0).get(1)),
    hanoi-board-new-state-2.get(0).get(2)),
    empty-board),
  hanoi-board-new-state-2.get(2).get(0))

 hanoi-board-new-state-2.get(2).get(0)

overlay(overlay(overlay(overlay(empty-board, 
        hanoi-board-new-state-2.get(0).get(0)),
      hanoi-board-new-state-2.get(0).get(1)),
    hanoi-board-new-state-2.get(0).get(2)),
 hanoi-board-new-state-2.get(2).get(0))

trekk2 =    
overlay(overlay(overlay(empty-board, 
        hanoi-board-new-state-2.get(0).get(0)),
      hanoi-board-new-state-2.get(0).get(1)),
    hanoi-board-new-state-2.get(0).get(2))

#|trekk3 =
  overlay(empty-board3, hanoi-board-new-state-2.get(1).get(0))|#

trekk1 =
overlay(empty-board2,
    hanoi-board-new-state-2.get(2).get(0))

#|trekk3 =    
overlay(overlay(overlay(overlay(empty-board, 
        hanoi-board-new-state-2.get(0).get(0)),
      hanoi-board-new-state-2.get(0).get(1)),
          hanoi-board-new-state-2.get(1).get(0)),
    hanoi-board-new-state-2.get(2).get(0))|#


    

#|overlay(overlay(overlay(overlay(empty-board, 
        hanoi-board-new-state-2.get(0).get(0)),
      hanoi-board-new-state-2.get(0).get(1)),
    hanoi-board-new-state-2.get(0).get(2)),
    overlay(empty-board2,
    hanoi-board-new-state-2.get(2).get(0)))|#


#|fun draw-overlay(acc, elt) -> Image:
  overlay(acc, elt)
end

trekk0 =
fold(draw-overlay, circle(5, "solid", "black"), hanoi-board.get(0))
   trekk01|#


overlay-xy(trekk1, -0, -0, trekk2)

#|overlay-xy(trekk1, -0, -0, overlay-xy(trekk3, -0, -0, trekk2))|#
