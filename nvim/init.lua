--#######################################
-- CONFIGURACIONES GENERALES
--#######################################
vim.g.floaterm_autoinsert = 1
vim.g.floaterm_width = 0.8
vim.g.floaterm_height = 0.8
vim.g.floaterm_wintitle = 0
vim.g.floaterm_autoclose = 1
vim.g.floaterm_keymap_toggle = '<F1>'
vim.opt.swapfile = false
vim.opt.syntax = 'on'
vim.opt.mouse = '' --esto es para que no funcione el mouse ='', para que funcione = 'a'
vim.opt.errorbells = false
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.number = true
vim.opt.background = 'dark'  -- Cambia a 'light' si prefieres
vim.cmd('colorscheme desert') -- Cambia 'desert' por el esquema que desees
vim.opt.smartindent = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 1
vim.opt.wrap = false
vim.opt.ignorecase = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.encoding = 'UTF-8'
vim.opt.cursorline = true

--#######################################
-- ENTRADA DE PLUGINS
--#######################################
vim.cmd('call plug#begin()') 

-- Plugin dashboard
vim.cmd('Plug \'glepnir/dashboard-nvim\'')

-- Plugin de transparencia
vim.cmd('Plug \'tribela/vim-transparent\'')

-- Para buscar con fzf
vim.cmd('Plug \'junegunn/fzf\'')  --usar :Lines  y :Files
vim.cmd('Plug \'junegunn/fzf.vim\'')

-- Status Bar
vim.cmd('Plug \'vim-airline/vim-airline\'')
vim.cmd('Plug \'vim-airline/vim-airline-themes\'')
vim.cmd('Plug \'ctrlpvim/ctrlp.vim\'')
vim.cmd('Plug \'ryanoasis/vim-devicons\'')   -- Para poner icono a directorio

-- IDE >> estos plugins son muy importantes
vim.cmd('Plug \'kyazdani42/nvim-tree.lua\'')
vim.cmd('Plug \'Yggdroot/indentLine\'')            -- Indentación
vim.cmd('Plug \'jiangmiao/auto-pairs\'')           -- Autocompletado de llaves, corchetes, etc


vim.cmd('call plug#end()')											    
--###########################################
-- FIN DE PLUGINS
--###########################################

--////////////////////////////////////////////////////////////////////////////////
-- CONFIGURACION DE PLUGINS
--////////////////////////////////////////////////////////////////////////////////
-- Para que las teclas de flechas no funcionen :(
vim.api.nvim_set_keymap('n', '<up>', '<nop>', { noremap = true })
vim.api.nvim_set_keymap('n', '<down>', '<nop>', { noremap = true })
vim.api.nvim_set_keymap('n', '<left>', '<nop>', { noremap = true })
vim.api.nvim_set_keymap('n', '<right>', '<nop>', { noremap = true })

-- Mapeo para abrir y cerrar NvimTree
vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- Configuración de NvimTree
require'nvim-tree'.setup {
  view = {
    width = 30,        -- Ancho del panel
    side = 'left',     -- Lado donde aparecerá
  },
}

-- Configuración de vim-airline
vim.cmd('let g:airline#extensions#tabline#left_sep = " "')
vim.cmd('let g:airline#extensions#tabline#left_alt_sep = "|"')
vim.cmd('let g:airline_theme = "serene"')

vim.cmd([[
let g:airline#extensions#default#section_truncate_width = {
    \ 'b': 79,
    \ 'x': 60,
    \ 'y': 88,
    \ 'z': 45,
    \ 'warning': 80,
    \ 'error': 80,
    \ }
]])

vim.cmd([[
let g:airline#extensions#default#layout = [
    \ [ 'a', 'b' , 'c','x'],
    \ [ 'y','z', 'error' ]
    \ ]
]])

-- Configuración de dashboard-nvim
require('dashboard').setup {
    theme = 'doom',
    config = {
        header = {
	  '',
	  '',
	  '',
	  '',
	  '',
	  '',
 ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
 ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
 ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
 ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
 ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
 ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
 '',
 '',
 '',
        },
        center = {
            { icon = ' ', desc = 'Search', action = 'Files' },
            { icon = ' ', desc = 'Create File', action = 'enew' },
            { icon = ' ', desc = 'Recent Files', action = 'History' },
	    { icon = ' ', desc = 'Tree', action = 'NvimTreeToggle' },
            { icon = ' ', desc = 'Quit', action = 'qa' },
        },
        footer = {},
        custom_center = {}
    },
}


