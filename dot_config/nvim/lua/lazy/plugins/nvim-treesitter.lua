return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
        local languages = {
            "lua",
            "python",
            "c",
            "cmake",
            "make",
            "cpp",
            "bash",
            "css",
            "html",
            "javascript",
            "typescript",
            "json",
            "xml",
            "yaml",
            "csv",
            "git_config",
            "gitignore",
            "go",
            "latex",
            "typst",
            "markdown",
            "rst",
            "tmux",
        }

        require 'nvim-treesitter'.install(languages)

        vim.api.nvim_create_autocmd('FileType', {
            pattern = languages,
            callback = function()
                vim.treesitter.start()
            end,
        })

    end,
}
