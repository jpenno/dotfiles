return {
  'stevearc/oil.nvim',
  opts = {},
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('oil').setup {
      default_file_explorer = true,

      filesystem = {
        filtered_items = {
          visible = true,
        },
      },
    }
  end,
}
