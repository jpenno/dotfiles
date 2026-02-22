return {
  {
    'nvim-orgmode/orgmode',
    event = 'VeryLazy',
    ft = { 'org' },
    config = function()
      -- Setup orgmode
      require('orgmode').setup {
        org_startup_folded = 'showeverything',
        org_agenda_files = '~/Documents/notes',
        org_default_notes_file = '~/Documents/notes/planning/20251026105521-tmp-notes.org',

        mappings = {
          org_return_uses_meta_return = true,
        },
      }
      -- NOTE: If you are using nvim-treesitter with ~ensure_installed = "all"~ option
      -- add ~org~ to ignore_install
      -- require('nvim-treesitter.configs').setup({
      --   ensure_installed = 'all',
      --   ignore_install = { 'org' },
      -- })
    end,
  },
  {
    'akinsho/org-bullets.nvim',
    config = function()
      require('org-bullets').setup()
    end,
  },
  {
    'chipsenkbeil/org-roam.nvim',
    tag = '0.2.0',
    dependencies = {
      {
        'nvim-orgmode/orgmode',
        tag = '0.7.0',
      },
    },
    config = function()
      require('org-roam').setup {
        directory = '~/Documents/notes',

        templates = {
          d = {
            description = 'daily',
            template = '#+TITLE: %<%Y-%m-%d>\n\n* Todo List %<%Y-%m-%d> \n** TODO %?',
            target = './daily/%<%Y-%m-%d>.org',
          },
        },
        -- optional
      }
    end,
  },
}
