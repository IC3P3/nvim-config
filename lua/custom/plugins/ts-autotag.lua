return {
  {
    'windwp/nvim-ts-autotag',
    event = { 'BufNewFile', 'BufReadPre' },
    config = function()
      require('nvim-ts-autotag').setup {
        options = {
          enable_close_on_slash = true,
        },
      }
    end,
  },
}
