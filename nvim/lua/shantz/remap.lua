vim.g.mapleader =  " "
vim.keymap.set("n", "<leader>pv", function()
  require("oil").open()
end, { desc = "Open parent directory in Oil" })

vim.keymap.set("n", "<leader>/", vim.cmd.nohlsearch)

vim.keymap.set("n", "<leader>sa", "G<S-v>gg", { noremap = true, silent = true })

-- vim.keymap.set("n", "=", [[<cmd>vertical resize +5<cr>]]) -- make the window biger vertically
-- vim.keymap.set("n", "-", [[<cmd>vertical resize -5<cr>]]) -- make the window smaller vertically

-- Uhm ahactually underscore is for jumping to beginning of line
-- Ok actually i lied
-- vim.keymap.set("n", "+", [[<cmd>horizontal resize +2<cr>]]) -- make the window bigger horizontally by pressing shift and =
-- vim.keymap.set("n", "_", [[<cmd>horizontal resize -2<cr>]]) -- make the window smaller horizontally by pressing shift and -
