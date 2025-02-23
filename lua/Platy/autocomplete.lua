local cmp = require("cmp")
local snip = require("luasnip")

cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<Esc>"] = cmp.mapping.abort(),
        ["<Tab>"] = cmp.mapping.confirm({select = true}),
        ["<Down>"] = cmp.mapping.select_next_item({behavior = cmp.SelectBehavior.Select}),
        ["<Up>"] = cmp.mapping.select_prev_item({behavior = cmp.SelectBehavior.Select}),
    }),
    completion = {
        completeopt = "menu,menuone,noinsert",
    },
    snippet = {
        expand = function(args)
            snip.lsp_expand(args.body)
        end
    },
    sources = {
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "buffer" },
        { name = "path" },
    }
})
