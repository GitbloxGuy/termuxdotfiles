vim.opt.number = true          -- Show line numbers
-- vim.opt.relativenumber = true  -- Show relative line numbers (great for jumping around)
-- vim.opt.mouse = 'a'            -- Enable mouse support
-- vim.opt.ignorecase = true      -- Ignore case in search patterns
-- vim.opt.smartcase = true       -- ...unless the search contains capitals
-- vim.opt.hlsearch = false       -- Clear search highlights after matching
-- vim.opt.wrap = false           -- Don't wrap lines
--
-- -- Tabs & Indentation
-- vim.opt.tabstop = 4            -- Number of spaces a tab counts for
-- vim.opt.shiftwidth = 4         -- Size of an indent
-- vim.opt.expandtab = true       -- Convert tabs to spaces
--
-- -- ========================================================================== --
-- -- 2. KEYMAPS (Shortcuts)
-- -- ========================================================================== --
-- -- Set spacebar as your leader key (the prefix for custom shortcuts)
-- vim.g.mapleader = ' '
--
-- -- Example: Pressing 'space + pv' will open the built-in file explorer (Netrw)
-- vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = 'Open File Explorer' })
--
-- -- Fast escape from Insert mode using 'jk'
-- vim.keymap.set('i', 'jk', '<Esc>')


require("config.lazy")
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
-- require("oil").setup()
