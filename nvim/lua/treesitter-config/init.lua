require("nvim-ts-autotag").setup {}
require("nvim-treesitter.configs").setup({
    ensure_installed = {
        "c", "lua", "rust", "javascript", "typescript", "tsx", "html", "css"
    },
    highlight = {enable = true},
    autotag = {enable = true}
})
