local lsp = require('lsp-zero')
lsp.preset("recommended")
require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed={
        'eslint',
        'rust_analyzer',
        'bashls',
        'denols',
        'jedi_language_server',

    },
    handlers= {
        lsp.default_setup,
    },
})
