local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Set header
dashboard.section.header.val = {
"                                                                ",
"     ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗         ",
"     ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║         ",
"     ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║         ",
"     ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║(\\(\\   ",
"     ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║( -.-)   ",
'     ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝o_(")(") ',
"                                                                "
}

-- Set menu
dashboard.section.buttons.val = {
    dashboard.button( "l", "  > Last Session", "<CMD>SessionManager load_last_session<CR>"),
    dashboard.button( "e", "  > New File" , "<CMD>ene <BAR> startinsert <CR>"),
    dashboard.button( "f", "  > Find File", "<cmd>lua require('telescope.builtin').find_files"..
    "({hidden=true, search_dirs={'~/Projects', '~/.config'}, find_command={'fd'}})<CR>"),
    dashboard.button( "r", "  > Recent"   , "<CMD>Telescope oldfiles<CR>"),
    dashboard.button( "q", "  > Quit NVIM", "<CMD>qa<CR>"),
}

-- Set footer
local fortune = require("alpha.fortune")
dashboard.section.footer.val = fortune()

-- Send config to alpha
alpha.setup(dashboard.opts)
