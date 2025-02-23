vim.g.mapleader = " " -- Sets the leader key to space

vim.keymap.set("n", "<leader>ex", ":Ex<Cr>", {}) -- Space + ex to open file explorer
vim.keymap.set("n", "<leader>w", ":w<Cr>", {}) -- Space + w to save file
vim.keymap.set("n", "<leader>so", ":so<Cr>", {}) -- Space + so to reload config
