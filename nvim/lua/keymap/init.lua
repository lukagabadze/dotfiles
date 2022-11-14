local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ll', "<cmd>Explore<CR>")
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>g', builtin.live_grep, {})
vim.keymap.set('n', '<leader>b', builtin.buffers, {})
vim.keymap.set('n', '<leader>h', builtin.help_tags, {})

vim.keymap.set('n', 'gp', ":silent %!prettier --stdin-filepath %<CR>", {})

vim.keymap.set('n', '<C-f>', "<cmd>NvimTreeFindFile<CR>", {})
vim.keymap.set('n', '<C-t>', "<cmd>NvimTreeToggle<CR>", {})
