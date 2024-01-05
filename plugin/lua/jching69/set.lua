vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.wrap = false
--vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 3
vim.opt.signcolumn = "no"
vim.opt.colorcolumn = "80"
vim.opt.clipboard:append { 'unnamed', 'unnamedplus' }
-- vim.opt.syntax = on
-- vim.cmd [[colorscheme catppuccin-mocha]]
require('visual_studio_code').setup({ 
    mode = 'light', 
    preset = true,
    transparent = true
})
vim.cmd [[colorscheme visual_studio_code]]
-- vim.cmd [[colorscheme vscode]]
--vim.cmd [[let g:netrw_winsize = 30]]
--vim.o.background = 'dark'
--require('vscode').load('light')
