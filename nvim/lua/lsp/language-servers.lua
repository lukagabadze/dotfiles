local capabilities = require('cmp_nvim_lsp').default_capabilities()
require('lspconfig')['html'].setup {
	capabilities = capabilities
}
require('lspconfig')['tsserver'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}
