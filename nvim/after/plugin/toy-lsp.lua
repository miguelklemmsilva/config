local server_path = vim.fn.expand("~/Developer/rust/wgsl-analyzer/target/release/wgsl-analyzer")
local client = vim.lsp.start_client {
    name = "toy-lsp",
    cmd = { server_path },
    root_dir = vim.loop.cwd()
}

if not client then
    vim.notify("failed to start toy lsp client")
    return
end

vim.api.nvim_create_autocmd("FileType", {
    pattern = "wgsl",
    callback = function()
        vim.lsp.buf_attach_client(0, client)
    end,
})

