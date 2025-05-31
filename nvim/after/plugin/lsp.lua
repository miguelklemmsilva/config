local mason          = require("mason")
local mlsp           = require("mason-lspconfig")
local cmp            = require("cmp")
local cmp_capability = require("cmp_nvim_lsp").default_capabilities()
local capabilities   = vim.tbl_deep_extend(
    "force",
    {},
    vim.lsp.protocol.make_client_capabilities(),
    cmp_capability)

cmp.setup({})
mason.setup({})
mlsp.setup({
    ensure_installed = {
        "lua_ls",
        "rust_analyzer",
    },
    handlers = {
        function(server_name) -- default handler (optional)
            require("lspconfig")[server_name].setup {
                capabilities = capabilities,
                flags = {
                    debounce_text_changes = 150, -- send changes after 150ms of no typing
                },
                inlay_hint = true
            }
        end,
    }
})

local map = vim.keymap.set

vim.diagnostic.config({
    virtual_text     = true,
    signs            = true,
    update_in_insert = true,
    severity_sort    = true,
})

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local bufnr = args.buf
        local opts  = { noremap = true, silent = true, buffer = bufnr }

        -- hover & signature
        map("n", "<leader>k", vim.lsp.buf.hover, opts)
        map("n", "<C-k>", vim.lsp.buf.signature_help, opts)

        -- workspace & code actions
        map("n", "<leader>rn", vim.lsp.buf.rename, opts)
        map("n", "<leader>ca", vim.lsp.buf.code_action, opts)

        -- diagnostics
        map("n", "[d", vim.diagnostic.goto_prev, opts)
        map("n", "]d", vim.diagnostic.goto_next, opts)
        map("n", "<leader>e", vim.diagnostic.open_float, opts)
        map("n", "<leader>q", vim.diagnostic.setloclist, opts)

        map("n", "<leader>f", vim.lsp.buf.format, opts)

        map("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<CR>",
            { desc = "Diagnostics (this file)" })
        map("n", "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>",
            { desc = "Diagnostics (workspace)" })
    end,
})

local cmp_select = { behavior = cmp.SelectBehavior.Select }

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<CR>']      = cmp.mapping.confirm({ select = true }),
        ['<Tab>']     = cmp.mapping.confirm({ select = true }),
        ["<C-Space>"] = cmp.mapping.complete(),
    }),
    sources = cmp.config.sources({
        { name = "copilot", group_index = 2 },
        { name = 'nvim_lsp' },
        { name = 'luasnip' }, -- For luasnip users.
    }, {
        { name = 'buffer' },
    })
})

vim.lsp.config("rust_analyzer", {
    capabilities = cmp_capability,
    checkOnSave = { command = "clippy" },
    cargo = { allFeatures = true },
    flags = {
        debounce_text_changes = 150, -- send changes after 150ms of no typing
    }
})

vim.lsp.inlay_hint.enable()
