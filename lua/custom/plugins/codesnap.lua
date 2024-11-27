return {
  {
    'mistricky/codesnap.nvim',
    build = 'make',
    event = 'VeryLazy',
    keys = {
      { '<leader>cn', '<cmd>CodeSnap<cr>', mode = 'x', desc = '[C]odeS[n]ap to clipboard' },
      { '<leader>ca', '<cmd>CodeSnapSave<cr>', mode = 'x', desc = '[C]odeSnap S[a]ve to file' },
    },
    config = function()
      require('codesnap').setup {
        save_path = (os.getenv 'XDG_Pictures_Dir' .. '/CodeSnap') or (os.getenv 'HOME' .. '/Pictures/CodeSnap'),
        has_breadcrumbs = false,
        show_workspace = false,
        has_line_number = true,
        bg_theme = 'dusk',
        bg_y_padding = 50,
        bg_x_padding = 75,
        watermark = '',
        code_font_family = 'Lilex Nerd Font',
      }
    end,
  },
}
