neoscroll = require('neoscroll')
local keymap = {
  ["<C-u>"] = function() neoscroll.scroll( -0.4, {
    move_cursor=true, duration = 200, easing = 'quadratic'
  }) end;
  ["<C-d>"] = function() neoscroll.scroll( 0.4, {
    move_cursor=true, duration = 200, easing = 'quadratic'
  }) end;
}
local modes = { 'n', 'v', 'x' }
for key, func in pairs(keymap) do
  vim.keymap.set(modes, key, func)
end
