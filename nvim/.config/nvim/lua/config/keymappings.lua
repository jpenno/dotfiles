vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Quick movement
vim.keymap.set('n', 'J', '5j')
vim.keymap.set('n', 'K', '5k')

-- Easy esc
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('i', 'kj', '<Esc>')

-- Quick fix list
vim.keymap.set('n', '<C-j>', '<cmd>cnext<CR>')
vim.keymap.set('n', '<C-k>', '<cmd>cprev<CR>')

-- Buffer ---------------------------------
-- kill buffer
vim.keymap.set('n', '<leader>bk', ':bd<CR>', { desc = 'kill focused buffer' })
vim.keymap.set('n', '<leader>bn', ':bn<CR>', { desc = 'go to the next buffer' })
vim.keymap.set('n', '<leader>bp', ':bp<CR>', { desc = 'go to the previous buffer' })

-- Keep visual mode indenting
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- Move selected line / block of text in visual mode
vim.keymap.set('x', 'K', ":move '<-2<CR>gv-gv")
vim.keymap.set('x', 'J', ":move '>+1<CR>gv-gv")

-- Save file by leader fs
vim.keymap.set('n', '<leader>fs', ':w<CR>', { desc = 'save buffer' })

-- Don't yank on visual paste
vim.keymap.set('v', 'p', '"_dP')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--  See `:help wincmd` for a list of all window commands
-- vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
-- vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
-- vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
-- vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- lazyGit
vim.keymap.set('n', '<leader>gg', ':LazyGit<CR>', { desc = 'open LazyGit' })

-- markdown
vim.keymap.set('n', '<leader>mt', ':MarkdownPreviewToggle<CR>', { desc = 'toggle markdown preview' })

-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Oil
vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })

-- Go
-- vim.keymap.set('n', '<C-r>', ':GoRename<CR>', { desc = 'Open parent directory' })
