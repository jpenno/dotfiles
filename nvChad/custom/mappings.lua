local M = {}
M.my = {
  n = {
    ["<leader>h"] = {
      "<cmd> noh <CR>",
      "remove helight"
    },
    ["<leader>e"] = {
      "<cmd> NvimTreeToggle <CR>",
      "Toggle nvim tree"
    },
    ["<leader>gg"] = {
      "<cmd> LazyGit <CR>",
      "Lazy Git"
    },
    ["<leader>q"] = {
      "<cmd> q <CR>",
      "quit"
    },
  },
  i = {
    ["jk"] = {
      "<Esc>",
      "Toggle breakpoint"
    },
    ["jj"] = {
      "<Esc>",
      "Toggle breakpoint"
    },
  }
}

M.dap = {
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Toggle breakpoint"
    },
    ["<leader>dus"] = {
      function ()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar"
    },
  }
}

M.crates = {
  n = {
    ["<leader>rcu"] = {
      function ()
        require('crates').upgrade_all_crates()
      end,
      "update crates"
    }
  }
}
return M
