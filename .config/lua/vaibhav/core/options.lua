vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- tabs and indentation
opt.tabstop = 2       -- 2 spaces for tabs
opt.shiftwidth = 2    -- 2 spaces for indent width
opt.expandtab = true  -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new line

opt.wrap = false

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true  -- assumes case-sensitive search when mixed case search string is provided

opt.cursorline = true

-- turn on termguicolors for tokyonight colorscheme to work
-- (have to use a true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be both light and dark will be made dark
opt.signcolumn = "yes" -- show sign column so that the text does not shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace to indent, enf of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

