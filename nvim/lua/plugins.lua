return require('packer').startup(function()
	-- Packer itself
	use 'wbthomason/packer.nvim'

	-- Neovim LSP config
	use 'neovim/nvim-lspconfig'

	-- Blank line
	use 'lukas-reineke/indent-blankline.nvim'

	use 'sakhnik/nvim-gdb'

	use {
		'nvim-telescope/telescope.nvim',
		requires = { 'nvim-lua/plenary.nvim' }
	}

	use {
		'romgrk/barbar.nvim',
		requires = {'kyazdani42/nvim-web-devicons'}
	}

	-- Neovim theme
	use {
		'EdenEast/nightfox.nvim',
		config = function()
			vim.cmd('colorscheme nightfox')
		end
	}

	-- Status bar
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true },
		config = function() require('lualine').setup() end
	}
end)
