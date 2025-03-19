require("nvchad.options")

local o = vim.o

vim.opt.wrap = true -- Enable line wrapping
vim.opt.linebreak = true -- Break lines at word boundaries
vim.opt.breakindent = true -- Keep indentation on wrapped lines
vim.opt.breakindentopt = "shift:2" -- Indent wrapped lines slightly
vim.opt.showbreak = "  " -- Add spaces at the beginning of wrapped lines

-- Indenting
o.shiftwidth = 4
o.tabstop = 4
o.softtabstop = 4

-- o.cursorlineopt ='both' -- to enable cursorline!

-- set filetype for .CBL COBOL files.
-- vim.cmd([[ au BufRead,BufNewFile *.CBL set filetype=cobol ]])
--vim.opt.relativenumber = true
