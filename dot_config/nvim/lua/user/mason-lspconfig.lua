local M = {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
  },
  config = function()
    local mason_lspconfig = require("mason-lspconfig")
      mason_lspconfig.setup({
        ensure_installed = {
          -- Lua
          "lua_ls",

          -- C
          --"clangd",

          -- Rust
          "rust_analyzer",

          -- Python
          "pyright",

          -- Web
          "ts_ls",
          "html",
          "cssls",

          -- Markdown
          "marksman",

          -- JSON & YAML
          "jsonls",
          "taplo",
          "yamlls",

          -- Docker and docker compose
          "dockerls",
          "docker_compose_language_service",
        },
        automatic_enable = true
      })
  end,
}

return M
