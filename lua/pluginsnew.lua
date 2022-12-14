local fn = vim.fn
local install_path = fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap =
		fn.system { 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path }
end

    -- TODO use NvChad as inspiration to organize this mess
    -- TODO install and configure DAP or vimspector

return require('packer').startup(function(use)
	use { 'wbthomason/packer.nvim' }

	use { 'nathom/filetype.nvim' }

	use { 'lewis6991/impatient.nvim' }

	use { 'SirVer/ultisnips' }

    -- New stuff

    use {'puremourning/vimspector'}

    use { 'KabbAmine/vCoolor.vim' }

    use { 'neovim/nvim-lspconfig' }
    
    use { 'kabouzeid/nvim-lspinstall' }

    use{
    "glepnir/lspsaga.nvim",
    branch = "main",
    config = function()
        local saga = require("lspsaga")

        saga.init_lsp_saga({
            -- your configuration
        })
    end,
}
    -- Configure lasaga in another file and require here, and configure
    -- lspinstall stuff 

    -- Cmp Stuff

    use { 'hrsh7th/cmp-nvim-lsp' }

    use { 'hrsh7th/cmp-buffer' }

    use { 'hrsh7th/cmp-path' }

    use { 'hrsh7th/cmp-cmdline' }

    use { 'quangnguyen30192/cmp-nvim-ultisnips' }

    use { 'hrsh7th/nvim-cmp' }

    -- TODO configure lua stuff for cmp

    -- End cmp

	use { 'luochen1990/rainbow', event = 'VimEnter' }

	use { 'kyazdani42/nvim-web-devicons' }

	use {
		'nvim-telescope/telescope.nvim',
		cmd = 'Telescope',
		requires = { 'nvim-lua/plenary.nvim' },
	}

    -- Set F7 as Telescope shortcut

	use { 'lukas-reineke/indent-blankline.nvim', cmd = 'IndentBlanklineToggle' }

	use { 'nvim-lualine/lualine.nvim' }

    use {
  'kdheepak/tabline.nvim',
  config = function()
    require'tabline'.setup {
      -- Defaults configuration options
      enable = true,
      options = {
      -- If lualine is installed tabline will use separators configured in lualine by default.
      -- These options can be used to override those settings.
        section_separators = {'', ''},
        component_separators = {'', ''},
        max_bufferline_percent = 66, -- set to nil by default, and it uses vim.o.columns * 2/3
        show_tabs_always = true, -- this shows tabs only when there are more than one tab or if the first tab is named
        show_devicons = true, -- this shows devicons in buffer section
        show_bufnr = false, -- this appends [bufnr] to buffer section,
        show_filename_only = true, -- shows base filename only instead of relative path in filename
        modified_icon = "● ", -- change the default modified icon
        modified_italic = false, -- set to true by default; this determines whether the filename turns italic if modified
        show_tabs_only = false, -- this shows only tabs instead of tabs + buffers
      }
    }
    vim.cmd[[
      set guioptions-=e " Use showtabline in gui vim
      set sessionoptions+=tabpages,globals " store tabpages and globals in session
    ]]
  end,
  requires = { { 'hoob3rt/lualine.nvim', opt=true } }
}

	use { 'norcalli/nvim-colorizer.lua', config = {
		function()
			require('colorizer').setup()
		end,
	} }

	use { 'tibabit/vim-templates', cmd = 'TemplateInit' }

	use { 'michaelb/sniprun', cmd = 'SnipRun' }

	--	use { 'liuchengxu/vim-clap', cmd = 'Clap' }

	use { 'justinmk/vim-sneak', keys = { 's', 'S' } }

	use { 'jiangmiao/auto-pairs' }

	use { 'mhinz/vim-signify', event = 'VimEnter' }

	use { 'mattn/emmet-vim', ft = { 'html', 'xml', 'yaml' } }

	use { 'ThePrimeagen/vim-be-good', cmd = 'VimBeGood' }

	use { 'alec-gibson/nvim-tetris', cmd = 'Tetris' }

	use { 'dstein64/vim-startuptime', event = 'VimEnter' }

	use { 'navarasu/onedark.nvim', config = {
		function()
			require 'onedark'
		end,
	} }

	use {
		'kylechui/nvim-surround',
		tag = '*', -- Use for stability; omit to use `main` branch for the latest features
		config = function()
			require('nvim-surround').setup {
				-- Configuration here, or leave empty to use defaults
			}
		end,
	}

	use {
		'nguyenvukhang/nvim-toggler',
		keys = '<leader>i',
		config = {
			function()
				require('nvim-toggler').setup()
			end,
		},
	}

	use { 'xuhdev/vim-latex-live-preview', ft = 'tex' }

	use {
		'kyazdani42/nvim-tree.lua',
		cmd = { 'NvimTreeToggle', 'NvimTreeFocus', 'NvimTreeFindFile', 'NvimTreeCollapse' },
		config = {
			function()
				require('nvim-tree').setup()
			end,
		},
	}

	use { 'lervag/vimtex', ft = 'tex' }

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require('packer').sync()
	end
end)
