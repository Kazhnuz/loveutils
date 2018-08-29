# loveutils

Basic love2D utility librairies. Contain kinda-sorted bits of codes that I use on my own project

To use it just add the "loveutils" folder where you want and just add this piece of code :

````loveutils = require "loveutils"````

## loveutils.math

All the math functions

### loveutils.math.sign

````y = loveutils.math.sign(x)````

return the sign of x (0 if x is 0)

### loveutils.math.round

````y = loveutils.math.round(x)````

return a rounded version of x (is equal to math.floor if x < .5 and to math.ceil if x ≥ 5)

### loveutils.math.vector

````vecx, vecy = loveutils.math.vector(x1, y1, x2, y2)````

return the vector notation of two set of coordinates

### loveutils.math.getMiddlePoint

````midx, midy = loveutils.math.getMiddlePoint(x1, y1, x2, y2)````

return the point exactly at the middle of two points

### loveutils.math.pointDistance

````distance = loveutils.math.pointDistance(x1, y1, x2, y2)````

return the distance between two points

### loveutils.math.pointDirection

````angle = loveutils.math.pointDistance(x1, y1, x2, y2)````

return the angle between two points

### loveutils.math.numberToString

````string = loveutils.math.numberToString(x, lenght)````

return a string corresponding to the x numbers with at least *lenght* digit (for instance loveutils.math.numberToString(1, 3) will return "001")

### loveutils.math.floorCoord

````x, y = loveutils.math.floorCoord(x, y)````

return both floored coordinate

### loveutils.math.pixeliseCoord

````x, y = loveutils.math.floorCoord(x, y, floor)````

return x and y, pixelisated with a factor of *factor*, useful if you are making a tile detection system, for instance.

## loveutils.graphics

all my graphics manipulation functions

### loveutils.graphics.resetColor

````loveutils.graphics.resetColor()````

return nothing

reset love current drawing color to love.graphics.setColor(1,1,1,1)

### loveutils.graphics.box(x, y, w, h)

````loveutils.graphics.box(x, y, w, h)````

return nothing

draw an half-transparent box with solid outline

### loveutils.graphics.print

````loveutils.graphics.print(text, x, y, align, r, sx, sy, ox, oy, kx, ky)````

return nothing

like love.graphics.print, but with alignement support.

### loveutils.graphics.printWithSpacing

````loveutils.graphics.printWithSpacing(text, x, y, align, spacing)````

draw a text like loveutils.graphics.print, but with support of spacing : each character will have a space of "spacing" between them.

(doesn't support for the moment angle, spacing, etc.)
