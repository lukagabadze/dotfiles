require("nvim-ts-autotag").setup()
require("nvim-treesitter.configs").setup({
    ensure_installed = {"c", "lua", "rust", "javascript", "typescript"},
    highlight = {enable = true, additional_vim_regex_highlighting = false},
    autotag = {enable = true}
})
