-- return {
--
--     {
--         "nvim-treesitter/nvim-treesitter",
--         event = { "BufReadPre", "BufNewFile" },
--         config = function()
--             require("configs.treesitter")
--         end,
--     },
--
--     {
--         "neovim/nvim-lspconfig",
--         event = { "BufReadPre", "BufNewFile" },
--         config = function()
--             require("nvchad.configs.lspconfig").defaults()
--             require("configs.lspconfig")
--         end,
--     },
--
--     {
--         "williamboman/mason-lspconfig.nvim",
--         event = "VeryLazy",
--         dependencies = { "nvim-lspconfig" },
--         config = function()
--             require("configs.mason-lspconfig")
--         end,
--     },
--
--     {
--         "mfussenegger/nvim-lint",
--         event = { "BufReadPre", "BufNewFile" },
--         config = function()
--             require("configs.lint")
--         end,
--     },
--
--     {
--         "rshkarin/mason-nvim-lint",
--         event = "VeryLazy",
--         dependencies = { "nvim-lint" },
--         config = function()
--             require("configs.mason-lint")
--         end,
--     },
--
--     {
--         "stevearc/conform.nvim",
--         event = "BufWritePre",
--         config = function()
--             require("configs.conform")
--         end,
--     },
--
--     {
--         "zapling/mason-conform.nvim",
--         event = "VeryLazy",
--         dependencies = { "conform.nvim" },
--         config = function()
--             require("configs.mason-conform")
--         end,
--     },
-- }

return {
    -- Treesitter for better syntax highlighting
    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("configs.treesitter")
        end,
    },

    -- LSP Configuration
    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("nvchad.configs.lspconfig").defaults()
            require("configs.lspconfig")
        end,
    },

    -- Mason LSP Config
    {
        "williamboman/mason-lspconfig.nvim",
        event = "VeryLazy",
        dependencies = { "nvim-lspconfig" },
        config = function()
            require("configs.mason-lspconfig")
        end,
    },

    -- Linter
    {
        "mfussenegger/nvim-lint",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("configs.lint")
        end,
    },

    -- Mason Linter
    {
        "rshkarin/mason-nvim-lint",
        event = "VeryLazy",
        dependencies = { "nvim-lint" },
        config = function()
            require("configs.mason-lint")
        end,
    },

    -- Formatter
    {
        "stevearc/conform.nvim",
        event = "BufWritePre",
        config = function()
            require("configs.conform")
        end,
    },

    -- Mason Formatter
    {
        "zapling/mason-conform.nvim",
        event = "VeryLazy",
        dependencies = { "conform.nvim" },
        config = function()
            require("configs.mason-conform")
        end,
    },

    -- 🌈 Tailwind Color Preview (nvim-colorizer.lua)
    {
        "NvChad/nvim-colorizer.lua",
        event = "VeryLazy",
        config = function()
            require("colorizer").setup({
                user_default_options = {
                    names = false, -- Don't highlight color names (e.g., "red")
                    css = true, -- Enable CSS color highlighting
                    tailwind = true, -- Enable Tailwind color previews
                },
            })
        end,
    },

{
    "roobert/tailwindcss-colorizer-cmp.nvim",
    event = "VeryLazy",
    config = function()
        require("tailwindcss-colorizer-cmp").setup({
            color_square_width = 2, -- Adjust the size of the color preview in autocomplete
        })
    end,
},
    -- 🎨 Tailwind Autocomplete Color Preview (Optional)
    -- {
    --     "roobert/tailwindcss-colorizer-cmp.nvim",
    --     event = "VeryLazy",
    --     config = function()
    --         require("tailwindcss-colorizer-cmp").setup({
    --             color_square_width = 2, -- Adjust the size of the color preview in autocomplete
    --         })
    --     end,
    -- },
}
