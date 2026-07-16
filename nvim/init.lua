vim.g.mapleader = ' '
require("config.lazy")
require("config.autocmds")
require("config.options")
vim.api.nvim_create_autocmd("VimEnter", {
	  callback = function()
		      vim.cmd("Neotree show")
		        end,
		})
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

-- Change the folder name color (e.g., to a nice light blue)
vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", { fg = "#d4af37", bold = true })

-- Change the folder icon color to match
vim.api.nvim_set_hl(0, "NeoTreeDirectoryIcon", { fg = "#d4af37" })

