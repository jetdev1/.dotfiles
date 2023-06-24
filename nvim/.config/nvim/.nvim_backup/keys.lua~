-- [[ keys.lua ]]
local map = vim.keymap.set
vim.g.mapleader = " "

-- [[ nvim-tree ]]
map('n', '<leader>tt', '<cmd>NvimTreeToggle<cr>')         -- Toggle nvim tree
map('n', '<leader>th', '<cmd>NvimTreeCollapse<cr>')       -- Collapse folders


-- [[ Editor ]]
map('n', '<leader>sa', 'gg<S-v>G')                        -- Select all
map('n', '<leader>cs', "<cmd>let @/=''<cr>")              -- Clear search highlights
map('n', '<leader>fp', '`[v`]')

map('n', '<leader>fm', '<cmd>tabnew ~/.config/nvim/lua/jittery/keys.lua<CR>')  -- Open keymap config file
map('n', '<leader>fs', '<cmd>w<cr>')                      -- Save file
map('n', '<leader>fr', '<cmd>w<cr><cmd>luafile %<cr>')    -- Refresh lua file
map('n', '<leader>fa', '<cmd>wqa<CR>')                    -- Save files and quit neovim
map('n', '<leader>fd', '<cmd>q!<CR>')                     -- Discard changes


-- [[ Telescope ]]
map('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files"..
    "({hidden=true, search_dirs={'~/Projects', '~/.config'}, find_command={'fd'}})<CR>")
map('n', '<leader>fk', '<CMD>Telescope keymaps<CR>')
map('n', '<leader>fb', '<CMD>Telescope file_browser<CR>')


-- [[ Window ]]
map('n', '<leader>vs', '<cmd>vsplit<cr>')                 -- Vertical split 
map('n', '<leader>hs', '<cmd>split<cr>')                  -- Horizontal split
map('n', '<A-]>', '<C-w>>')
map('n', '<A-[>', '<C-w><')


-- [[ Markdown ]]
map('n', '<leader>mp', '<cmd>MarkdownPreview<CR>')


-- [[ barbar ]]
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<leader>wh', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<leader>wl', '<Cmd>BufferNext<CR>', opts)

-- Save and close the file
map('n', '<leader>wq', '<Cmd>w<CR><Cmd>BufferClose<CR>', opts)

-- Re-order to previous/next
map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)

-- Goto buffer in position...
map('n', '<leader>1', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<leader>2', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<leader>3', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<leader>4', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<leader>5', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<leader>6', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<leader>7', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<leader>8', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<leader>9', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<leader>0', '<Cmd>BufferLast<CR>', opts)

-- [[ Diagnostics]]
map('n', '<leader>dr', '<cmd>lua vim.lsp.buf.rename()<CR>')  -- Rename variable
map('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)

vim.g.diagnostics_active = true                              -- Function to toggle diagnostics
function _G.toggle_diagnostics()
  if vim.g.diagnostics_active then
    vim.g.diagnostics_active = false
    vim.diagnostic.hide()
  else
    vim.g.diagnostics_active = true
    vim.diagnostic.show()
  end
end

map('n', '<leader>dt', ':call v:lua.toggle_diagnostics()<CR>') -- Toggle diagnostics
map('n', '<leader>dh', ':lua vim.diagnostic.hide()<CR>')
map('n', '<leader>ds', ':lua vim.diagnostic.show()<CR>')
