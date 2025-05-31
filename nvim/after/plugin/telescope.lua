local map = vim.keymap.set

local builtin = require('telescope.builtin')

map('n', 'ga', builtin.live_grep)
map("n", "gf", builtin.git_files)
map("n", "gF", builtin.find_files)
map('n', 'gs', builtin.lsp_document_symbols, { desc = "Goto Symbol" })
map('n', 'gr', builtin.lsp_references)
map('n', 'gi', builtin.lsp_implementations)
map('n', 'gd', builtin.lsp_definitions)

map('n', '<leader>gc', builtin.git_commits)
map('n', '<leader>gb', builtin.git_branches)
map('n', '<leader>gs', builtin.git_stash)

map('n', '<leader>ts', builtin.treesitter)
