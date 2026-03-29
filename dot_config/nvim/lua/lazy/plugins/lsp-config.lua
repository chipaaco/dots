return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "mason-org/mason.nvim",
    },
    config = function()
        vim.lsp.enable('lua_ls')
    end
}
