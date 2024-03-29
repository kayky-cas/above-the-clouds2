return {
    "nvimtools/none-ls.nvim",
    dependencies = {
        "jose-elias-alvarez/null-ls.nvim",
    },
    config = function()
        local null_ls = require("null-ls")
        local builtins = null_ls.builtins

        local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

        null_ls.setup({
            sources = {
                builtins.formatting.stylua,
                builtins.formatting.ocamlformat,
                builtins.formatting.rustfmt,
            },
            on_attach = function(client, bufnr)
                if client.supports_method("textDocument/formatting") then
                    vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
                    vim.api.nvim_create_autocmd("BufWritePre", {
                        group = augroup,
                        buffer = bufnr,
                        callback = function()
                            vim.lsp.buf.format({ async = false })
                        end,
                    })
                end
            end,
        })
    end,
}
