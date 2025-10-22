return {
  'chrisgrieser/nvim-origami',
  event = 'VeryLazy',
  opts = {}, -- needed even when using default config
  vim.keymap.set('n', '<tab>', 'za'),

  -- recommended: disable vim's auto-folding
  init = function()
    vim.opt.foldlevel = 99
    vim.opt.foldlevelstart = 99
  end,
}
