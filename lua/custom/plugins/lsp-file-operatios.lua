return {
  {
    'antosha417/nvim-lsp-file-operations',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'simonmclean/triptych.nvim',
    },
    config = function()
      require('lsp-file-operations').setup()
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
