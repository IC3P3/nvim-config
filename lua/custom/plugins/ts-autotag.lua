return {
  {
    'windwp/nvim-ts-autotag',
    event = { 'BufNewFile', 'BufReadPre' },
    opts = {
      enable_close_on_slash = true,
    },
  },
}
