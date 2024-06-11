require('lazy').setup({
  require 'plugins.which-key',
  require 'plugins.Comment',
  require 'plugins.gitsigns',
  require 'plugins.telescope',
  require 'plugins.lsp',
  require 'plugins.conform',
  require 'plugins.nvim-cmp',
  require 'plugins.todo-comments',
  require 'plugins.mini',
  require 'plugins.nvim-treesitter',
  -- require 'plugins.go',
  require 'plugins.oil',
  -- require 'plugins.neogit',
  require 'plugins.lazygit',
  require 'plugins.rainbow-delimiters',
  require 'plugins.nvim-autopairs',
  require 'plugins.nvim-colorizer',
  require 'plugins.noice',
  -- themes
  -- require 'plugins.tokyonight',
  require 'plugins.catppuccin',
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})
