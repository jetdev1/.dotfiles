require('telescope').setup {
    extensions = {
        file_browser = {
            theme = "dropdown",
            hijack_netrw = true,
            hidden = true
        },
        fzf = {}
    },
    pickers = {
        find_files = {
            hidden = true
        }
    },
    defaults = {
        file_ignore_patterns = {".git/.*", "venv/.*", ".nvim_backup/.*"},
        layout_strategy = "vertical",
            layout_config = {
              height = math.floor(0.8 * vim.o.lines),  -- maximally available lines
              width = math.floor(0.5 * vim.o.columns), -- maximally available columns
              prompt_position = "top",
              preview_height = 0.6, -- 60% of available lines
            }
   }
}

require("telescope").load_extension("file_browser", 'fzf')
