local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

vim.g.leader = ' '

require('lazy').setup(({
    -- [[ CORE ]] 
    'dstein64/vim-startuptime',

    -- [[ UI ]]
    'goolord/alpha-nvim',
    'Shatur/neovim-session-manager',
    'romgrk/barbar.nvim',
    { 'sainnhe/everforest',
    	priority = 1000,
      lazy = false,
    },
    'karb94/neoscroll.nvim',
    { 'kyazdani42/nvim-tree.lua',       -- File tree viewer
      dependencies = { 'kyazdani42/nvim-web-devicons' }}, -- optional, for file icons
    {
      'nvim-lualine/lualine.nvim',
      dependencies = { 'kyazdani42/nvim-web-devicons', lazy = true }
    },
    {
    'nvim-treesitter/nvim-treesitter',
    build = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    },

    -- [[ LSP ]]
    {
	    'neovim/nvim-lspconfig',
	    dependencies = {
		    'williamboman/mason.nvim',
		    'williamboman/mason-lspconfig.nvim'
    },
    },
    
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-nvim-lsp-signature-help',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',

    'konfekt/vim-compilers',
    {
      'kaarmu/typst.vim',
      ft = 'typst',
      lazy=true 
    },

    -- [[ Telescope ]]
    'nvim-telescope/telescope.nvim',
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build =  'make'
    },
    {
      "nvim-telescope/telescope-file-browser.nvim",
      dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    },

    -- [[ Editor ]]
    'windwp/nvim-autopairs',
    'windwp/nvim-ts-autotag',
    'Vimjas/vim-python-pep8-indent',

    -- [[ git ]]
    'lewis6991/gitsigns.nvim',

    -- [[ Markdown ]]
    ({ "iamcco/markdown-preview.nvim", build = "cd app && npm install",
        init = function() vim.g.mkdp_filetypes = { "markdown" } end,
        ft = { "markdown" }, })
}))

-- remove this if there's an issue
vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
  once = true,
  callback = function()
    -- In wsl 2, just install xclip
    -- Ubuntu
    -- sudo apt install xclip
    -- Arch linux
    -- pacman -S xclip
    vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
  end,
  desc = "Lazy load clipboard",
})
