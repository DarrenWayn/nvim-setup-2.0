-- auto install packer if not installed
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
	return
end

-- add list of plugins to install
return packer.startup(function(use)
	-- packer can manage itself
	use("wbthomason/packer.nvim")

	use("nvim-lua/plenary.nvim") -- lua functions that many plugins use

	-- prefered colorscheme
	use({
		"svrana/neosolarized.nvim",
		requires = {
			"tjdevries/colorbuddy.nvim",
		},
	})

	use({ "manzeloth/live-server" })

	use("christoomey/vim-tmux-navigator") -- tmux & split window navigation

	use("szw/vim-maximizer") -- maximizes and restores current window

	-- essential plugins
	use("tpope/vim-surround") -- add, delete, change surroundings (it's awesome)
	use("vim-scripts/ReplaceWithRegister") -- replace with register contents using motion (gr + motion)

	-- commenting with gr
	use("numToStr/Comment.nvim")

	-- commenting with jsx/tsx
	use("JoosepAlviste/nvim-ts-context-commentstring")

	-- file explorer
	use("nvim-tree/nvim-tree.lua")

	-- vs-code like icons
	use("kyazdani42/nvim-web-devicons")

	-- statusline
	use("nvim-lualine/lualine.nvim")

	-- fuzzy finding w/ telescope
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dependency for better sorting performance
	use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" }) -- fuzzy finder

	use("nvim-telescope/telescope-file-browser.nvim")

	-- autocompletion
	use("hrsh7th/nvim-cmp") -- completion plugin
	use("hrsh7th/cmp-buffer") -- source for text in buffer
	use("hrsh7th/cmp-path") -- source for file system paths

	-- snippets
	use("L3MON4D3/LuaSnip") -- snippet engine
	use("saadparwaiz1/cmp_luasnip") -- for autocompletion
	use("rafamadriz/friendly-snippets") -- useful snippets

	-- managing & installing lsp servers, linters & formatters
	use("williamboman/mason.nvim") -- in charge of managing lsp servers, linters & formatters
	use("williamboman/mason-lspconfig.nvim") -- bridges gap b/w mason & lspconfig

	-- for better looing tabs
	use({ "akinsho/nvim-bufferline.lua", tag = "v3.*", requires = "kyazdani42/nvim-web-devicons" })

	-- for delete buffer tab
	use("famiu/bufdelete.nvim")

	-- color highlighter
	use("norcalli/nvim-colorizer.lua")

	-- configuring lsp servers
	use("neovim/nvim-lspconfig") -- easily configure language servers
	use("hrsh7th/cmp-nvim-lsp") -- for autocompletion
	use({ "glepnir/lspsaga.nvim", branch = "main" }) -- enhanced lsp uis
	use("jose-elias-alvarez/typescript.nvim") -- additional functionality for typescript server (e.g. rename file & update imports)
	use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion

	-- formatting & linting
	use("jose-elias-alvarez/null-ls.nvim") -- configure formatters & linters
	use("jayp0521/mason-null-ls.nvim") -- bridges gap b/w mason & null-ls

	-- treesitter configuration
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})

	-- sticky function
	use("nvim-treesitter/nvim-treesitter-context")

	-- color rainbow brackets
	use("p00f/nvim-ts-rainbow")

	-- auto closing
	use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...
	use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags

	-- auto save
	-- use({ "Pocco81/auto-save.nvim" })

	use({ "sindrets/diffview.nvim", requires = "nvim-lua/plenary.nvim" })

	use({ "glepnir/dashboard-nvim" })
	-- git integration
	use("lewis6991/gitsigns.nvim") -- show line modifications on left hand side

	-- show line for better reading
	-- use({
	-- 	"lukas-reineke/indent-blankline.nvim",
	-- 	config = function()
	-- 		require("indent_blankline").setup({ filetype_exclude = { "dashboard" } })
	-- 	end,
	-- }

	-- fold
	use({
		"anuvyklack/pretty-fold.nvim",
		config = function()
			require("pretty-fold").setup()
		end,
	})

	-- Find and Replace
	use("ray-x/sad.nvim")
	use("ray-x/guihua.lua")

	-- show size package bundle
	use({ "yardnsm/vim-import-cost", run = "npm install --omit=dev" })

	-- console ninja
	use({ "0x100101/lab.nvim", run = "cd js && npm ci" })

	-- paste Imgage
	use("ekickx/clipboard-image.nvim")

	-- smooth scroll
	use("karb94/neoscroll.nvim")

	-- scrollbar
	use("petertriho/nvim-scrollbar")

	-- highlight word when on point
	use({ "yamatsum/nvim-cursorline" })

	use("dinhhuy258/git.nvim")
	if packer_bootstrap then
		require("packer").sync()
	end
end)
