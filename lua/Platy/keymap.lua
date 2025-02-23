vim.g.mapleader = " " -- Sets the leader key to space

-- Text editor keybinds
vim.keymap.set("n", "<leader>w", ":w<Cr>", {}) -- Space + w to save file
vim.keymap.set("n", "<leader>so", ":so<Cr>", {}) -- Space + so to reload config

-- Fine explorer keybinds
vim.keymap.set("n", "<leader>ex", ":Ex<Cr>", {}) -- Space + ex to open file explorer
vim.keymap.set("n", "<leader><Tab>", function()
    if(vim.fn.bufname():match("NvimTree_") == nil) then
        return vim.cmd("NvimTreeFocus")
    else
        return vim.cmd("wincmd p")
    end
end, {silent = false})
vim.keymap.set("n", "<leader><S-Tab>", ":NvimTreeToggle<Cr>", {silent = true})
