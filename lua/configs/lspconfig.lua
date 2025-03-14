local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")

-- List of all servers configured.
lspconfig.servers = {
    "lua_ls",
    "clangd",
    "pyright",
    "ts_ls", -- JavaScript/TypeScript
    "html", -- HTML
    "cssls", -- CSS
    "emmet_ls", -- Emmet (for fast HTML/CSS)
    "tailwindcss", -- Tailwind CSS
    "eslint", -- ESLint
    "jsonls", -- JSON
    "prismals", -- Prisma
    "graphql", -- GraphQL
    "dockerls", -- Docker
    "yamlls", -- YAML
}

-- List of servers configured with default config.
local default_servers = {
    "pyright",
    "ts_ls",
    "html",
    "cssls",
    "emmet_ls",
    "tailwindcss", -- Tailwind CSS server
    "eslint",
    "jsonls",
    "prismals",
    "graphql",
    "dockerls",
    "yamlls",
}

-- LSPs with default config
for _, lsp in ipairs(default_servers) do
    lspconfig[lsp].setup({
        on_attach = on_attach,
        on_init = on_init,
        capabilities = capabilities,
    })
end

-- Specific setup for clangd
lspconfig.clangd.setup({
    on_attach = function(client, bufnr)
        client.server_capabilities.documentFormattingProvider = false
        client.server_capabilities.documentRangeFormattingProvider = false
        on_attach(client, bufnr)
    end,
    on_init = on_init,
    capabilities = capabilities,
})

-- Specific setup for lua_ls
lspconfig.lua_ls.setup({
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
    settings = {
        Lua = {
            diagnostics = {
                enable = false, -- Disable all diagnostics from lua_ls
            },
            workspace = {
                library = {
                    vim.fn.expand("$VIMRUNTIME/lua"),
                    vim.fn.expand("$VIMRUNTIME/lua/vim/lsp"),
                    vim.fn.stdpath("data") .. "/lazy/ui/nvchad_types",
                    vim.fn.stdpath("data") .. "/lazy/lazy.nvim/lua/lazy",
                    "${3rd}/love2d/library",
                },
                maxPreload = 100000,
                preloadFileSize = 10000,
            },
        },
    },
})

-- Specific setup for emmet_ls
lspconfig.emmet_ls.setup({
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
    filetypes = { "html", "css", "javascript", "javascriptreact", "typescriptreact" },
    init_options = {
        html = {
            options = {
                ["bem.enabled"] = true,
            },
        },
    },
})

-- Specific setup for tailwindcss (for JS, TS, JSX, TSX files)
lspconfig.tailwindcss.setup({
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
    filetypes = { "javascript", "typescript", "javascriptreact", "typescriptreact", "html", "css" },
    init_options = {
        userExtensions = {
            ".jsx",
            ".tsx",
            ".js",
            ".ts",
            ".html",
            ".css",
        },
        includeLanguages = {
            javascript = "html",
            typescript = "html",
            javascriptreact = "html",
            typescriptreact = "html",
        },
    },
})
