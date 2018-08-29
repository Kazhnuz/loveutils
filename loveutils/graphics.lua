local Graphics = {}

function Graphics.resetColor()
  love.graphics.setColor(1,1,1,1)
end

function Graphics.box(x, y, w, h)
  local x = math.floor(x)
  local y = math.floor(y)
  local w = math.floor(w)
  local h = math.floor(h)
  local a = a or 1
  
  local r, g, b, a = love.graphics.getColor( )

  love.graphics.setColor(r, g, b, 0.3 * a)
  love.graphics.rectangle("fill", x, y, w, h)

  love.graphics.setColor(r, g, b, a)
  love.graphics.rectangle("line", x, y, w, h)
end

function Graphics.print(text, x, y, align, r, sx, sy, ox, oy, kx, ky)
  local width
  local font = love.graphics.getFont()
  width = font:getWidth(text)

  if align == "center" then
    width = (width/2)
  elseif align == "right" then
    width = width
  else
    width = 0
  end

  love.graphics.print(text, x - (width), y, r, sx, sy, ox, oy, kx, ky)
end

function Graphics.printWithSpacing(text, spacing, align, x, y, r, sx, sy, ox, oy, kx, ky)
  -- DO NOT USE THIS FUNCTION IN A "UPDATE" FUNCTION !
  -- it's pretty heavy to use as it use a loop to get every character in a text
  local font = love.graphics.getFont()
  local xx = 0
  local lenght = string.len(text)
  local basewidth = font:getWidth(text)
  local width = basewidth + (spacing * lenght)

  if align == "center" then
    width = (width/2)
  elseif align == "right" then
    width = width
  else
    width = 0
  end

  for i=1, lenght do
    local char =  string.sub(text, i, i)
    pos = math.floor(x + xx - width)
    love.graphics.print(char, pos, y)
    xx = xx + font:getWidth(char) + spacing
  end
end

return Graphics
