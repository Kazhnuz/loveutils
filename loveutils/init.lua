local cwd  = (...):gsub('%.init$', '') .. "."

return {
  math = require(cwd .. "math"),
  graphics = require(cwd .. "graphics")
}
