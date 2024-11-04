local get_active_lsp = function()
  local msg = 'No Active Lsp'
  local buf_ft = vim.api.nvim_get_option_value('filetype', {})
  local clients = vim.lsp.get_clients { bufnr = 0 }
  if next(clients) == nil then
    return msg
  end

  for _, client in ipairs(clients) do
    ---@diagnostic disable-next-line: undefined-field
    local filetypes = client.config.filetypes
    if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
      return client.name
    end
  end
  return msg
end

return {
  {
    -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
    -- See `:help lualine.txt`
    opts = {
      options = {
        icons_enabled = vim.g.have_nerd_font,
        section_separators = {
          left = '',
          right = '',
        },
        component_separators = '|',
      },
      sections = {
        lualine_a = {
          {
            'mode',
            separator = {
              left = '',
            },
          },
        },
        lualine_b = {
          {
            'branch',
            fmt = function(name, _)
              -- truncate branch name in case the name is too long
              return string.sub(name, 1, 20)
            end,
          },
          'diff',
        },
        lualine_c = {
          {
            'filename',
            symbols = {
              readonly = '[🔒]',
            },
          },
        },
        lualine_x = {
          {
            get_active_lsp,
            icon = ' LSP:',
          },
          {
            'diagnostics',
            sources = { 'nvim_diagnostic' },
            symbols = { error = '🆇 ', warn = '⚠️ ', info = 'ℹ️ ', hint = ' ' },
          },
        },
        lualine_y = {
          'filetype',
        },
        lualine_z = {
          {
            'progress',
            'location',
            separator = {
              right = '',
            },
          },
        },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {
          'filename',
        },
        lualine_x = {},
        lualine_y = {},
        lualine_z = {
          'location',
        },
      },
    },
  },
}

-- vim: ts=2 sts=2 sw=2 et
