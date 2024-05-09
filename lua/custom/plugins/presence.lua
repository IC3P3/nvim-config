return {
  -- Discord rich presence integration for Neovim
  'andweeb/presence.nvim',

  -- Function to set default setting and change default settings
  config = function()
    -- Call the setup presence.nvim and change settings
    require('presence').setup {
      -- Automatically update the activity when changing file, interface or whatever
      auto_update = true,
      -- Text displayed when hovering over the image
      neovim_image_text = 'I use Neovim btw!',
      -- The image is changed to the type of file opened (with 'neovim' it is always an Neovim image)
      main_image = 'file',
      -- Show the line you are currently in (somewhat infrequently)
      enable_line_number = true,
      -- Add buttons to beneath the activity and can open an url
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
      -- Enables the times how long you are in Neovim
      show_timer = true,
    }
  end,
}
