vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use ('nvim-treesitter/nvim-treesitter', {run = 'TSUpdate'})
    use ({'rebelot/kanagawa.nvim', 
            as = 'kanagawa', 
            config = function()                                         
                vim.cmd('colorscheme kanagawa')
        end
    })
    use ({'mbbill/undotree'})
    use ({'lambdalisue/suda.vim'})

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment these if you want to manage LSP servers from neovim
            -- {'williamboman/mason.nvim'},
            -- {'williamboman/mason-lspconfig.nvim'},

            -- LSP Support
            {'neovim/nvim-lspconfig'},
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    }
    use({'williamboman/mason.nvim'})

    use({'williamboman/mason-lspconfig.nvim'})
    use('tpope/vim-fugitive')
end)
