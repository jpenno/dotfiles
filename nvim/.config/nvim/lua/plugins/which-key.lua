return { -- Useful plugin to show you pending keybinds.
  'folke/which-key.nvim',
  keys = { '<leader>' },
  event = 'VimEnter', -- Sets the loading event to 'VimEnter'
  config = function() -- This is the function that runs, AFTER loading
    require('which-key').setup()
    -- Document existing key chains
    --    require('which-key').register {
    --      ['<leader>c'] = { name = '[C]ode', _ = 'which_key_ignore' },
    --      ['<leader>d'] = { name = '[D]ocument', _ = 'which_key_ignore' },
    --      ['<leader>r'] = { name = '[R]ename', _ = 'which_key_ignore' },
    --      ['<leader>s'] = { name = '[S]earch', _ = 'which_key_ignore' },
    --      ['<leader>w'] = { name = '[W]orkspace', _ = 'which_key_ignore' },
    --      ['<leader>b'] = { name = '[B]uffer', _ = 'which_key_ignore' },
    --      ['<leader>m'] = { name = '[M]arkdown', _ = 'which_key_ignore' },
    --      ['<leader>g'] = { name = '[G]it', _ = 'which_key_ignore' },
    --    }
    --
    -- require('which-key').register {
    --   --{ '<leader>b', group = '[B]uffer' },
    --   { '<leader>c', group = '[C]ode', _ = 'which_key_ignore' },
    --   { '<leader>d', group = '[D]ocument', _ = 'which_key_ignore' },
    --   { '<leader>r', group = '[R]ename', _ = 'which_key_ignore' },
    --   { '<leader>s', group = '[S]earch', _ = 'which_key_ignore' },
    --   { '<leader>w', group = '[W]orkspace', _ = 'which_key_ignore' },
    --   { '<leader>b', group = '[B]uffer', _ = 'which_key_ignore' },
    --   { '<leader>m', group = '[M]arkdown', _ = 'which_key_ignore' },
    --   { '<leader>g', group = '[G]it', _ = 'which_key_ignore' },
    -- }
  end,
}
