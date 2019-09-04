#!/usr/bin/python

import time
import pyosd

# p = pyosd.osd()
# p = pyosd.osd(font = 'fixed')
# p = pyosd.osd(font = "DejaVu Sans Mono:style=Book")
p = pyosd.osd(font ="-Misc-Fixed-Medium-R-SemiCondensed--13-120-75-75-C-60-ISO8859-1",  lines = 12)


p.display("eschew obfuscation")
# p.set_pos(pyosd.POS_BOT)
p.set_pos(pyosd.ALIGN_RIGHT)
p.set_pos(pyosd.POS_MID)
p.set_timeout(30)

for i in range(0, 11, 4):
    # p.set_line(100)
    p.display("this will be down the bottom.", 0, i)
    p.display("Hello this will be down the bottom.", 0, i + 1)
    # https://askubuntu.com/questions/769218/pyosd-works-with-interpreter-but-not-with-a-script
    p.show()
    # p.wait_until_no_display()
    time.sleep(1)
    p.display("THIS WILL BE DOWN THE BOTTOM.", 0, i +  2)
    p.display("HELLO THIS WILL BE DOWN THE BOTTOM.", 0, i +  3)
    p.show()
p.wait_until_no_display()
