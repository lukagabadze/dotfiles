return require('packer').startup(function()
	-- packer can manage itself
	use 'wbthomason/packer.nvim'

	-- colorscheme
	use 'gruvbox-community/gruvbox'

	-- web devicons --
	use 'nvim-tree/nvim-web-devicons'

	-- lualine --
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	-- dashboard --
	use 'glepnir/dashboard-nvim'

	-- syntax highlighting--
	use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

	-- telescope
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- auto completion --
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'

	-- which-key --
	use 'folke/which-key.nvim'

	-- formatter --
	use 'lukas-reineke/lsp-format.nvim'

	-- auto pairs --
	use {
		'windwp/nvim-autopairs',
		config = function() require("nvim-autopairs").setup {} end
	}

	-- auto tag --
	use 'alvan/vim-closetag'

	-- git signs --
	use {
		'lewis6991/gitsigns.nvim',
		config = function()
			require('gitsigns').setup()
		end
	}

	-- nvim tree --
	use 'nvim-tree/nvim-tree.lua'

end)
