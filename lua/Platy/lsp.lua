local lsp = require("lspconfig")
local cmp = require("cmp_nvim_lsp")

local capabilities = cmp.default_capabilities()

lsp.lua_ls.setup({
    capabilities = capabilities,
})

lsp.clangd.setup({
    capabilities = capabilities,
})
