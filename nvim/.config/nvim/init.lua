require('jittery.plugs')
-- [[ IMPORTS ]]
require('jittery.opts')
require('jittery.keys')

-- [[ PLUGINS ]]
require('nvim-tree').setup{}
require('nvim-autopairs').setup{}
require('gitsigns').setup{}
require('alpha').setup(require('alpha.themes.dashboard').config)

