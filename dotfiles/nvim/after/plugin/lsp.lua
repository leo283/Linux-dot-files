local lsp = require('lsp-zero')
lsp.preset("recommended")
require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed={
        'tsserver',
        'eslint',
        'rust_analyzer',
        'clangd',
        'bashls',
        'denols',
        'jedi_language_server',

    },
    handlers= {
        lsp.default_setup,
    },
})
