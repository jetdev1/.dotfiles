require('bufferline')
-- require('bufferline').setup{
--     auto_hide = true,
--     tabpages = false,
--     icons.separator.left = ' ',
--     icons.inactive.separator.left = ' ',
--     icons.button = '',
--     icons.modified = '●',
--     icons.pinned.button = '車'
-- }
 vim.cmd[[hi BufferTabpageFill guibg=none]]

local nvim_tree_events = require('nvim-tree.events')
local bufferline_api = require('bufferline.api')

local function get_tree_size()
  return require'nvim-tree.view'.View.width
end

nvim_tree_events.subscribe('TreeOpen', function()
  bufferline_api.set_offset(get_tree_size())
end)

nvim_tree_events.subscribe('Resize', function()
  bufferline_api.set_offset(get_tree_size())
end)

nvim_tree_events.subscribe('TreeClose', function()
  bufferline_api.set_offset(0)
end)
