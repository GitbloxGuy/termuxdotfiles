vim.g.mapleader = ' '

vim.g.clipboard = {
  name = 'termux-clipboard',
  copy = {
    ['+'] = 'termux-clipboard-set',
    ['*'] = 'termux-clipboard-set',
  },
  paste = {
    ['+'] = 'termux-clipboard-get',
    ['*'] = 'termux-clipboard-get',
  },
  cache_enabled = 0,
}	

require("config.lazy")
require("config.autocmds")
require("config.options")
require("config.keymaps")

