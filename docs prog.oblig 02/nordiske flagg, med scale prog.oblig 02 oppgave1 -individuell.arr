use context essentials2021
fun cross-flag(tallx, tally, base, thinstripe, largestripe):
  
  
  scale-xy(tallx, tally,
  overlay-xy(rectangle(220, 20, "solid", thinstripe), 0, -70,
    overlay-xy(rectangle(20, 160, "solid", thinstripe), -70, 0,
      overlay-xy(rectangle(220, 40, "solid", largestripe), 0, -60, 
        overlay-xy(rectangle(40, 160, "solid", largestripe), -60, 0,
            rectangle(220, 160, "solid", base))))))
end



norway = cross-flag(1, 1, "red", "midnight-blue", "white")
sweden = cross-flag(1.145, 1,"medium-blue", "gold", "gold")
denmark = cross-flag(0.95, 1, "crimson", "white", "crimson")
finland = cross-flag(1.19, 1, "white", "navy", "navy")
island = cross-flag(1.09, 1, "medium-blue", "red", "white")
faroeisland = cross-flag(1, 1, "white", "red", "royal-blue")

denmark
norway
island
faroeisland
sweden
finland


  
  