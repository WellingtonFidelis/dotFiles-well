return require('packer').startup(function()
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Nord theme
	use 'shaunsingh/nord.nvim'

	-- Tree sitter
	use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"}
end)
