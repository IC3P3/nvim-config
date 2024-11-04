return {
  {
    'simonmclean/triptych.nvim',
    event = 'VeryLazy',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons',
      'antosha417/nvim-lsp-file-operations',
    },
    opts = {},
    keys = {
      { '<leader>-', ':Triptych<CR>' },
    },
  },
}
