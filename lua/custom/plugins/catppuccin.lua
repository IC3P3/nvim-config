return {
  -- Installation of the colortheme catppuccin
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,

  config = function()
    local catppuccin = require 'catppuccin'

    -- Changing the config of catppuccin
    catppuccin.setup {
      -- Set the default flavor automatically by the background theme
      -- The background color is set by the desktop color to latte/frappe
      flavor = 'auto',
      background = {
        light = 'latte',
        dark = 'frappe',
      },
      dim_inactive = {
        enabled = true,
        shade = 'dark',
        percentage = 0.35,
      },
      integrations = {
        cmp = true,
        gitsigns = true,
        mini = {
          enabled = true,
        },
        native_lsp = {
          enabled = true,
        },
        telescope = {
          enabled = true,
        },
        treesitter = true,
        which_key = true,
      },
    }
    -- Set catppuccin as the color theme
    vim.cmd.colorscheme 'catppuccin'
  end,
}
