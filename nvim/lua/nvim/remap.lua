local map  = vim.keymap.set
local n, v, x, i = "n", "v", "x", "i"

vim.g.mapleader = " "
vim.g.maplocalleader = " "
map(n, "<leader>pv", vim.cmd.Ex)

map(v, "J", ":m '>+1<CR>gv=gv")
map(v, "K", ":m '<-2<CR>gv=gv")

map(n, "n", "nzzzv")
map(n, "N", "Nzzzv")

map(x, "<leader>p", [["+p]])
map({ n, v }, "<leader>y", [["+y]])
map(n, "<leader>Y", [["+Y]])

map({ n, v }, "<leader>d", "\"_d")

map(i, "<C-c>", "<Esc>")
map(n, "Q", "<nop>")

map(n, "<C-k>", "<cmd>cnext<CR>zz")
map(n, "<C-j>", "<cmd>cprev<CR>zz")
map(n, "<leader>k", "<cmd>lnext<CR>zz")
map(n, "<leader>j", "<cmd>lprev<CR>zz")

-- better HJKL
map({n, v}, "H", "^")
map({n, v}, "L", "$")
map({n, v}, "J", "}")
map({n, v}, "K", "{")

map({n, v}, "<C-h>", "<C-w>h")
map({n, v}, "<C-j>", "<C-w>j")
map({n, v}, "<C-k>", "<C-w>k")
map({n, v}, "<C-l>", "<C-w>l")

map(n, "yF", ":%y+<CR>")

-- Go to previous buffer
map('n', '<leader>bp', ':bp<CR>', { desc = 'Previous buffer' })
map('n', '<leader>bn', ':bn<CR>', { desc = 'Next buffer' })
map('n', '<leader>bd', ':bd<CR>')
