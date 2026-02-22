return {
  'obsidian-nvim/obsidian.nvim',
  version = '*', -- recommended, use latest release instead of latest commit
  ft = 'markdown',
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
  --   -- refer to `:h file-pattern` for more examples
  --   "BufReadPre path/to/my-vault/*.md",
  --   "BufNewFile path/to/my-vault/*.md",
  -- },
  ---@module 'obsidian'
  ---@type obsidian.config
  opts = {
    workspaces = {
      {
        name = 'personal',
        path = '~/Documents/notes',
      },
    },

    legacy_commands = false,

    templates = {
      folder = './__Templates',
      date_format = nil,
      time_format = nil,
      substitutions = {},

      ---@class obsidian.config.CustomTemplateOpts
      ---
      ---@field notes_subdir? string
      ---@field note_id_func? (fun(title: string|?, path: obsidian.Path|?): string)
      customizations = {},
    },
    daily_notes = {
      folder = './Planning/Daily-notes/',
      date_format = nil,
      alias_format = nil,
      default_tags = { 'daily-notes' },
      workdays_only = true,
    },

    checkbox = {
      enabled = true,
      create_new = true,
      order = { ' ', 'x' },
    },
  },
}
