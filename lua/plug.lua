--[[ plug.lua ]]

local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    -- My plugins here

    -- For: file system navigation
    use {
        'nvim-tree/nvim-tree.lua',
        requires = 'nvim-tree/nvim-web-devicons'        -- filesystem icons
    }

    -- better highlighting
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    -- For: history tree, to be able to navigate undo/redo
    use 'mbbill/undotree'

    -- For: Cursor jump indicator
    use 'DanilaMihailov/beacon.nvim'

    -- For: Status line
    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

    -- For: themes
    use 'Mofiqul/dracula.nvim'

    -- For: showing indent lines
    use 'Yggdroot/indentLine'

    -- For: fuzzy finder
    use {
        'nvim-telescope/telescope.nvim',                 -- fuzzy finder
        requires = {'nvim-lua/plenary.nvim'}
    }

    -- For: git commands
    use 'tpope/vim-fugitive'

    -- For: git history browser
    use {
        'junegunn/gv.vim',
        requires = {'tpope/vim-fugitive'}
    }

    use {
        'phaazon/hop.nvim',
        branch = 'v2', -- optional but strongly recommended
    }

    -- LSP install setup
    use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      requires = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        {                                      -- Optional
          'williamboman/mason.nvim',
          run = function()
            pcall(vim.cmd, 'MasonUpdate')
          end,
        },
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
      }
    }

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)
