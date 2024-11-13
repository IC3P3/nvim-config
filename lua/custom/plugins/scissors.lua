return {
  {
    'chrisgrieser/nvim-scissors',
    event = 'BufEnter',
    dependencies = 'nvim-telescope/telescope.nvim',
    opts = {
      snippetDir = '~/.code/snippets',
      backdrop = {
        blend = 75,
      },
      jsonFormatter = 'jq',
    },
    config = function(_, opts)
      local present, wk = pcall(require, 'which-key')
      if not present then
        return
      end

      require('scissors').setup(opts)

      wk.add {
        { '<leader>cs', group = '[C]ode [S]nippet', nowait = false, remap = false },
        { '<leader>csa', '<cmd>lua require("scissors").addNewSnippet()<CR>', desc = '[C]ode [S]nippet [A]dd', nowait = false, remap = false },
        { '<leader>cse', '<cmd>lua require("scissors").editSnippet()<CR>', desc = '[C]ode [S]nippet [E]dit', nowait = false, remap = false },

        { '<leader>as', group = 'Snippets', mode = 'x', nowait = false, remap = false },
        {
          '<leader>asa',
          '<cmd>lua require("scissors").addNewSnippet()<CR>',
          desc = '[C]ode [S]nippet [A]dd from Selection',
          mode = 'x',
          nowait = false,
          remap = false,
        },
      }
    end,
  },
}
