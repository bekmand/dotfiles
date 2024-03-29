-- Native LSP Setup

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
require'lspconfig'.gopls.setup{
    on_attach = function()
        vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
        vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, {buffer=0})
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer=0})
        vim.keymap.set("n", "<leader>df", vim.diagnostic.goto_next, {buffer=0})
        vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev, {buffer=0})
        vim.keymap.set("n", "<leader>dh", "<cmd>Telescope diagnostics<cr>", {buffer=0})
        vim.keymap.set("n", "rn", vim.lsp.buf.rename, {buffer=0})

    end,
}


require'lspconfig'.pyright.setup{
    capabilities = capabilities,   
    on_attach = function()
        vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
        vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, {buffer=0})
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation {buffer=0})
        vim.keymap.set("n", "<leader>df", vim.diagnostig.goto_next {buffer=0})
        vim.keymap.set("n", "<leader>dp", vim.diagnostig.goto_prev {buffer=0})
        --vim.keymap.set("n", "<leader>dh", "<cmd>Telescope diagnostics<cr>" {buffer=0})
        vim.keymap.set("n", "rn", vim.lsp.buf.rename {buffer=0})
    end,
}

require'lspconfig'.tsserver.setup{
    capabilities = capabilities,   
    on_attach = function()
        vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
        vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, {buffer=0})
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation {buffer=0})
        vim.keymap.set("n", "<leader>df", vim.diagnostig.goto_next {buffer=0})
        vim.keymap.set("n", "<leader>dp", vim.diagnostig.goto_prev {buffer=0})
        --vim.keymap.set("n", "<leader>dh", "<cmd>Telescope diagnostics<cr>" {buffer=0})
        vim.keymap.set("n", "rn", vim.lsp.buf.rename {buffer=0})
    end,
}

