return require('packer').startup({function()
	use {
		'wbthomason/packer.nvim',
		event = "VimEnter"
	}

	use "kdheepak/lazygit.nvim"

	use "tpope/vim-vinegar"

	use "seandewar/nvimesweeper"

	use {
		"ellisonleao/glow.nvim",
		config = function()
			vim.g.glow_border = "rounded"
			vim.g.glow_width = 120
		end
	}

	use 'voldikss/vim-floaterm'

	use {
		'stevearc/dressing.nvim',
		config = function()
			require'plugins.configs.dressing'
		end
	}

	-- Git
	use {
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup{}
		end
	}

	use {
		"glepnir/dashboard-nvim",
		config = function()
			require "plugins.configs.dashboard"
		end
	}

	use {
		'sudormrfbin/cheatsheet.nvim',

		requires = {
			{'nvim-telescope/telescope.nvim'},
			{'nvim-lua/popup.nvim'},
			{'nvim-lua/plenary.nvim'},
		}
	}

	use {
		'jghauser/mkdir.nvim',
		config = function()
			require('mkdir')
		end
	}


	use {
		'folke/tokyonight.nvim',
		config = function()
			vim.cmd[[colorscheme tokyonight]]
		end
	}

	use {
		'sunjon/shade.nvim',
		config = function()
			require'plugins.configs.shade'
		end
	}

	use {
		'norcalli/nvim-colorizer.lua',
		config = function()
			require'colorizer'.setup()
		end
	}

	use {
		'nvim-lualine/lualine.nvim',
		config = function()
			require'lualine'.setup({
				options = {
					theme = 'tokyonight'
				}
			})
		end,
		requires = {'kyazdani42/nvim-web-devicons', opt = true}
	}

	use {
		'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	require'plugins.configs.keybinds'
end,

config = {
	display = {
		-- Create a floating window for packer commands
		open_fn = require('packer.util').float,
	}
}})

