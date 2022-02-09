return require('packer').startup(function()
	-- Packer itself
	use 'wbthomason/packer.nvim'

	-- Neovim LSP config
	use 'neovim/nvim-lspconfig'

	-- Blank line
	use 'lukas-reineke/indent-blankline.nvim'

	-- Neovim theme
	use {
		'Mofiqul/dracula.nvim',
		config = function() vim.cmd [[colorscheme dracula]] end
	}

	-- Status bar
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true },
		config = function() require('lualine').setup { options = { theme = 'dracula' } } end
	}
end)
