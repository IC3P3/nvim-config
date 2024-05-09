return {
  -- Discord rich presence integration for Neovim
  'andweeb/presence.nvim',

  config = function()
    require('presence').setup {
      auto_update = true,
      neovim_image_text = 'I use Neovim btw!',
      main_image = 'file',
      enable_line_number = true,
      buttons = {
        {
          label = 'Forgejo',
          url = 'https://git.eiflerstrom.de/IC3P3',
        },
        {
          label = 'GitHub',
          url = 'https://github.com/IC3P3',
        },
      },
      show_timer = true,
    }
  end,
}
