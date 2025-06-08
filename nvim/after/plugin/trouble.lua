-- Diagnostics (Trouble) – toggle the workspace diagnostics panel
vim.keymap.set("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", {
  desc = "Diagnostics (Trouble)",
})

-- Buffer Diagnostics (Trouble) – toggle diagnostics for the current buffer only
vim.keymap.set("n", "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", {
  desc = "Buffer Diagnostics (Trouble)",
})

-- Symbols (Trouble) – toggle the symbols view (e.g. document symbols)
vim.keymap.set("n", "<leader>cs", "<cmd>Trouble symbols toggle focus=false<cr>", {
  desc = "Symbols (Trouble)",
})

-- LSP Definitions / References / etc. (Trouble) – open LSP items in a right-hand panel
vim.keymap.set("n", "<leader>cl", "<cmd>Trouble lsp toggle focus=false win.position=right<cr>", {
  desc = "LSP Definitions / References (Trouble)",
})

-- Location List (Trouble) – toggle the location list panel
vim.keymap.set("n", "<leader>xL", "<cmd>Trouble loclist toggle<cr>", {
  desc = "Location List (Trouble)",
})

-- Quickfix List (Trouble) – toggle the quickfix list panel
vim.keymap.set("n", "<leader>xQ", "<cmd>Trouble qflist toggle<cr>", {
  desc = "Quickfix List (Trouble)",
})
