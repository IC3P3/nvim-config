-- [[ Setting options ]]
-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

-- Make line numbers default
vim.opt.number = true
vim.opt.relativenumber = true

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = {
  tab = '» ',
  trail = '·',
  nbsp = '␣',
}

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 15

-- Remove line wrapping
vim.opt.wrap = false

-- Set language used by Neovim
vim.cmd 'language en_US.UTF8'

-- Set behaviour of tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Neovide specific settings
if vim.g.neovide then
  vim.o.guifont = 'Lilex Nerd Font,FiraCode Nerd Font,JetBrainsMono Nerd Font:h16'
  vim.g.neovide_scroll_animation_length = 0.15
  vim.g.neovide_scroll_animation_far_lines = 0.5
  vim.g.neovide_hide_mouse_when_typing = true
  vim.g.neovide_refresh_rate = 120
  vim.g.neovide_detach_on_quit = 'promt'
  vim.g.neovide_cursor_animation_length = 0.07
  vim.g.neovide_cursor_trail_size = 0.3
end

-- vim: ts=2 sts=2 sw=2 et
