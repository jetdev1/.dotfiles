local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {'python'},
  },
  ensure_installed = {
    "python",
    "typescript",
    "javascript",
    "toml",
    "fish",
    "json",
    "yaml",
    "css",
    "html",
    "lua",
    "markdown",
    "markdown_inline",
  },
  autotag = {
    enable = true,
  },
}
