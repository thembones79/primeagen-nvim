
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.cursorline = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("USERPROFILE") .. "/.vim/undodir"
vim.opt.undofile = true

-- vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.cmd("set mouse=")

vim.cmd("let g:neovide_transparency=0.9")
-- vim.cmd("set guifont=BBT:h9")
-- vim.cmd("set guifont=FantasqueSansMono\\ NF:h13")
-- vim.cmd("set guifont=FixedsysExcelsiorIIIb\\ Nerd\\ Font:h12")
vim.cmd("set guifont=BigBlueTermPlus\\ Nerd\\ Font:h9")

vim.cmd('colorscheme gruvbox')
vim.cmd('let gruvbox_bold=0')
vim.cmd('let gruvbox_italic=0')
vim.cmd('let gruvbox_contrast_dark="soft"')
vim.cmd('colorscheme default')
vim.cmd('colorscheme gruvbox')
require("gruvbox").setup({
    bold = false,
    contrast = "soft",
})
vim.cmd('colorscheme gruvbox')


require('lualine').setup{
    options = {
        icons_enabled = false,
        component_separators = '│',
        section_separators = '',
    },
}


require('leap').add_default_mappings()
