-- sets the CursorLine
vim.cmd [[
   augroup ilikecursorline
      autocmd VimEnter * :highlight CursorLine guibg=#282a2e
   augroup END
]]

vim.opt.relativenumber = true
vim.opt.scrolloff = 10
