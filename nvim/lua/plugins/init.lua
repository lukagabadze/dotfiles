return require("packer").startup(function()
	-- packer can manage itself
	use("wbthomason/packer.nvim")

	-- colorscheme
	use("gruvbox-community/gruvbox")

	-- web devicons --
	use("nvim-tree/nvim-web-devicons")

	-- lualine --
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})

	-- dashboard --
	use("glepnir/dashboard-nvim")

	-- syntax highlighting--
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	use("windwp/nvim-ts-autotag")

	-- telescope with plugins: tabs
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use("LukasPietzschmann/telescope-tabs")

	-- auto completion --
	use("neovim/nvim-lspconfig")
	use("williamboman/nvim-lsp-installer")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/vim-vsnip")

	-- formatter --
	use("jose-elias-alvarez/null-ls.nvim")

	-- which-key --
	use("folke/which-key.nvim")

	-- auto pairs --
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})

	-- git signs --
	use({
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	})

	-- nvim tree --
	use("nvim-tree/nvim-tree.lua")

	-- comments --
	use("terrortylor/nvim-comment")
end)
