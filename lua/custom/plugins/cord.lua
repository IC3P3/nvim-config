return {
  {
    'vyfor/cord.nvim',
    build = './build',
    event = 'VeryLazy',
    opts = {
      timer = {
        interval = 2000,
      },
      editor = {
        tooltip = 'Powered by Neovide and Kickstart',
      },
      display = {
        show_cursor_position = true,
      },
      lsp = {
        show_problem_count = true,
        severity = 2,
      },
      idle = {
        disable_on_focus = true,
      },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
