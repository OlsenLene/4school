use context essentials2021
overlay-xy(rectangle(380, 150, "outline", "black"), 10, 10, 
  overlay-align("pinhole", "middle", circle(5, "solid", "black"),
    overlay-align("pinhole", "middle", circle(12, "solid", "red"),
      overlay-align("pinhole", "middle", circle(23, "solid", "blue"),
        overlay-align("pinhole", "middle", circle(35, "solid", "green"),
          overlay-align("pinhole", "middle", circle(50, "solid", "orange"),
     beside-align("middle", circle(60, "outline", "transparent"),
      overlay-align("pinhole", "middle", circle(5, "solid", "black"),
                beside-align("middle", circle(60, "outline", "transparent"), 
                  overlay-align("pinhole", "middle", circle(5, "solid", "black"), circle(60, "outline", "transparent")))))))))))