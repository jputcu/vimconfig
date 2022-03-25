local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function()
	-- Packer can manage itself
  	use 'wbthomason/packer.nvim'
	
	-- File manager side bar
	use 'scrooloose/nerdtree'

	-- Status bar
	use 'itchyny/lightline.vim'

	use {
  		'nvim-telescope/telescope.nvim',
  		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- Automatically set up your configuration after cloning packer.nvim
  	-- Put this at the end after all plugins
  	if packer_bootstrap then
    		require('packer').sync()
  	end
	end)
