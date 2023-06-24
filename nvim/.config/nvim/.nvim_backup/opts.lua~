-- [[ opts.lua ]]

vim.cmd [[filetype plugin on]]    -- Enable filetype plugins
local opt = vim.opt              -- Reduce code to type

-- [[ Encoding ]]
vim.scriptendcoding = 'utf-8'    -- Specifies character endcoding used in the script.
vim.opt.encoding = 'utf-8'       -- Specifies output encoding of the terminal.
vim.opt.fileencoding = 'utf-8'   -- Specifies encoding of file that is written.

-- [[ Workspace ]]
opt.title = true                 -- Title of window will be set to filename
opt.number = true                -- Show line numbers
opt.showmode = false             -- Hide mode indicator
opt.relativenumber = true        -- Use relative line numbers
opt.scrolloff = 10               -- Minimum lines shown beneath cursor
opt.signcolumn = "yes"           -- Show the sign column
opt.lazyredraw = true            -- Enable lazy redraw
opt.termguicolors = true         -- Enable true color in the terminal
opt.background = 'dark'          -- Use dark background
opt.syntax = "ON"                -- Enable syntax highlighting
opt.wrap = false                 -- Disable line wrapping
opt.ttyfast = true               -- Smoother redrawing for fast terminal connections

-- [[ Windows ]]
opt.splitright = true            -- Open new vsplits to the right
opt.splitbelow = true            -- Open new hsplits to the bottom

-- [[ Files ]]
opt.backup = true                -- Enable backups
opt.backupdir = ".nvim_backup"
opt.backupskip = { '/tmp/*', '/private/tmp/*' }

-- [[ Whitespace ]]
opt.expandtab = true             -- Use spaces instead of tabs
opt.shiftwidth = 4               -- Size of indent
opt.softtabstop = 4              -- Number of spaces used in place of <tab>
opt.tabstop = 4                  -- Length of \t character
opt.autoindent = true            -- Copy indent of current line to new line
opt.smartindent = true           -- Auto indent based on syntax

-- [[ Backspace ]]
opt.backspace = { 'start', 'eol', 'indent' }

-- [[ Search ]]
opt.hlsearch = true              -- Highlight search matches
opt.ignorecase = true            -- Disable case-sensitivity
opt.smartcase = true             -- Enable case-sensitivity when capital letters are used
vim.opt.path:append { '**' }     -- Search into subdirectories

-- [[ Mouse ]]
opt.mouse = 'vn'                  -- Limit mouse support to visual, normal mode.

-- [[ Clipboard ]]
opt.clipboard = 'unnamedplus'     -- For Unix. Use clip.exe etc for WSL.

