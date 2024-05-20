require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = {
        "lua_ls"
    },
}


local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lspconfig = require('lspconfig')
lspconfig.lua_ls.setup({
    capabilities = capabilities
})

vim.keymap.set('n', '?', vim.lsp.buf.hover, {})
vim.keymap.set('n', '.', vim.lsp.buf.definition, {})
vim.keymap.set('n', ',', vim.lsp.buf.references, {})
vim.keymap.set({ 'n', 'v' }, '<leader><Tab>', vim.lsp.buf.code_action, {})

