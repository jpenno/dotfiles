lvim.format_on_save.enabled = true
lvim.colorscheme = "dracula"
lvim.transparent_window = true
lvim.builtin.treesitter.rainbow.enable = true
-- set relative numbered lines
vim.opt.relativenumber = true

-- Keys to exit input moed
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("i", "kj", "<Esc>")
vim.keymap.set("i", "kk", "<Esc>")
