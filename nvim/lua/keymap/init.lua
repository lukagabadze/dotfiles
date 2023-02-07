local builtin = require("telescope.builtin")

-- General --
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")
vim.keymap.set("n", "<leader>ec", "<cmd>:edit ~/.config/nvim/init.lua<CR>")

-- Telescope --
vim.keymap.set("n", "<leader>ll", "<cmd>Explore<CR>")
vim.keymap.set("n", "<leader>lf", builtin.find_files, {})
vim.keymap.set("n", "<leader>lb", builtin.buffers, {})
vim.keymap.set("n", "<leader>lt", "<cmd>:Telescope telescope-tabs list_tabs<CR>", {})
vim.keymap.set("n", "<leader>g", builtin.live_grep, {})
vim.keymap.set("n", "<leader>r", builtin.oldfiles, {})
vim.keymap.set("n", "<leader>h", builtin.help_tags, {})

-- lsp --
vim.keymap.set("n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>", {})

-- nvimtree --
vim.keymap.set("n", "<leader>f", "<cmd>NvimTreeFindFile<CR>", {})
vim.keymap.set("n", "<leader>t", "<cmd>NvimTreeToggle<CR>", {})
