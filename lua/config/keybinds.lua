vim.opt.mouse = 'a'
vim.g.mapleader = " "
vim.opt.termguicolors = true
vim.opt.number = true
-- vim.opt.relativenumber = false
vim.opt.autoindent = true
vim.opt.tabstop=2
vim.opt.shiftwidth=2
vim.opt.softtabstop=2
vim.opt.expandtab = true
vim.opt.wrap = false
vim.opt.clipboard="unnamedplus" -- does not work unless mouse=v
vim.opt.mouse = 'v'
-- custom keymap bindings for default controls
vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>Q', ':quit!<CR>', {noremap = true, silent = true})
vim.keymap.set("n", "<leader>v", ":vsplit<CR><C-w>w") -- vertically split window and select it
vim.keymap.set("n", "<leader>b", ":split<CR><C-w>w") -- vertically split window and select it
vim.keymap.set("n", "<leader>e", ":E<CR>")

-- Define key mappings for navigating windows with arrow keys
vim.api.nvim_set_keymap('n', '<leader><Up>', '<C-w>k', { noremap = true, silent = true })    -- Move to window above
vim.api.nvim_set_keymap('n', '<leader><Down>', '<C-w>j', { noremap = true, silent = true })  -- Move to window below
vim.api.nvim_set_keymap('n', '<leader><Left>', '<C-w>h', { noremap = true, silent = true })  -- Move to window left
vim.api.nvim_set_keymap('n', '<leader><Right>', '<C-w>l', { noremap = true, silent = true }) -- Move to window right

-- nvim-tree specific ( DISABLES NETRW )
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.keymap.set('n', '<leader>e', function()
    vim.cmd(':NvimTreeToggle')
  end)

-- telescope keybinds
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fd', "Telescope file_browser<CR>", {})
