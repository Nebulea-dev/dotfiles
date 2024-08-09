require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n",
    "<leader>l",
    "<cmd>lua vim.diagnostic.open_float()<cr>",
    { desc = "Toggle lsp_lines" })
