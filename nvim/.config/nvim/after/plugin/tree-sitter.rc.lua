local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
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
    "c"
  },
  autotag = {
    enable = true,
  },
}
