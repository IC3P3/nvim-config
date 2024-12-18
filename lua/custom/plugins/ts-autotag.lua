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

-- vim: ts=2 sts=2 sw=2 et
