use context essentials2021
LEFT-PIN-Circle-mid-point = circle(5, "solid","black")
MIDDLE-PIN-Circle-mid-point = circle(5, "solid","black")
RIGHT-PIN-Circle-mid-point = circle(5, "solid","black")
RECTANGLE = rectangle(330, 120, "outline", "black")

ORANGE-LEFT-Circle-xxl = circle(40, "solid","Orange")
BLUE-LEFT-Circle-xl = circle(30, "solid","blue")
GREEN-LEFT-Circle-m = circle(20, "solid","green")
RED-LEFT-Circle-s = circle(10, "solid","red")

ORANGE-MIDDLE-Circle-xxl = circle(40, "solid","Orange")
BLUE-MIDDLE-Circle-xl = circle(30, "solid","blue")
GREEN-MIDDLE-Circle-m = circle(20, "solid","green")
RED-MIDDLE-Circle-s = circle(10, "solid","red")

ORANGE-RIGHT-Circle-xxl = circle(40, "solid","Orange")
BLUE-RIGHT-Circle-xl = circle(30, "solid","blue")
GREEN-RIGHT-Circle-m = circle(20, "solid","green")
RED-RIGHT-Circle-s = circle(10, "solid","red")


overlay-xy(LEFT-PIN-Circle-mid-point, -65, -55,
  overlay-xy(RED-LEFT-Circle-s, -60, -50,
    overlay-xy(GREEN-LEFT-Circle-m, -50, -40,
      overlay-xy(BLUE-LEFT-Circle-xl, -40, -30,
        overlay-xy(ORANGE-LEFT-Circle-xxl, -30, -20,
            overlay-xy(MIDDLE-PIN-Circle-mid-point, -165, -55,
                overlay-xy(RED-MIDDLE-Circle-s, -160, -50,
                  overlay-xy(GREEN-MIDDLE-Circle-m, -150, -40,
                    overlay-xy(BLUE-MIDDLE-Circle-xl, -140, -30,
                      overlay-xy(ORANGE-MIDDLE-Circle-xxl, -130, -20,
                    overlay-xy(RIGHT-PIN-Circle-mid-point, -265, -55,
                              overlay-xy(RED-RIGHT-Circle-s, -260, -50,
                                overlay-xy(GREEN-RIGHT-Circle-m, -250, -40,
                                  overlay-xy(BLUE-RIGHT-Circle-xl, -240, -30,
                                    overlay-xy(ORANGE-RIGHT-Circle-xxl, -230, -20,

              rectangle(330, 120, "outline", "black"))))))))))))))))
			  
