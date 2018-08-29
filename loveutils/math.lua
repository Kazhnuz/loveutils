local Math = {}

function Math.sign(x)
   if (x < 0) then
     return -1
   elseif (x > 0) then
     return 1
   else
     return 0
   end
end

function Math.round(num)
  return math.floor(num + 0.5)
end

function Math.vector(x1, y1, x2, y2)
  local vecx, vecy

  vecx = x2 - x1
  vexy = y2 - y1

  return vecx, vecy
end

function Math.getMiddlePoint(x1, y1, x2, y2)
  local newx, newy, vecx, vecy

  vecx = math.max(x1, x2) - math.min(x1, x2)
  vecy = math.max(y1, y2) - math.min(y1, y2)

  newx = math.min(x1, x2) + (vecx / 2)
  newy = math.min(y1, y2) + (vecy / 2)

  return newx, newy
end

function Math.pointDistance(x1, y1, x2, y2)
  local vecx, vecy

  vecx = math.max(x1, x2) - math.min(x1, x2)
  vexy = math.max(y1, y2) - math.min(y1, y2)

  return math.sqrt(vecx^2 + vecy^2)

end

function Math.pointDirection(x1,y1,x2,y2)
  local vecx, vecy, angle
  vecy = y2 - y1
  vecx = x2 - x1
  angle = math.atan2(vecy, vecx)

  return angle
end

function Math.numberToString(x, length)
  local length = length or 1
  local string = ""
  local x = x
  if (x >= math.pow(10, length)) then
    x = unitsNumber*10 - 1
    string = string .. x
  else
    for i=1, (length-1) do
      if (x < math.pow(10, length-i)) then
        string = string .. "0"
      end
    end
    string = string .. x
  end
  return string
end

function Math.floorCoord(x, y)
  return math.floor(x), math.floor(y)
end

function Math.pixeliseCoord(x, y, factor)
  x, y = Math.floorCoord(x / factor, y / factor)

  x = x * factor
  y = y * factor

  return x, y
end

return Math
