return {
  {
    'Wansmer/symbol-usage.nvim',
    event = 'LspAttach',
    config = function()
      require('symbol-usage').setup {
        log = {
          enabled = false,
          level = 'ERROR',
          stdout = {
            enabled = true,
          },
          log_file = {
            enabled = false,
            path = '',
          },
          notify = {
            enabld = true,
          },
        },
        filetypes = {},
      }
    end,
  },
}
