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
          "volar",
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
        }
      })
      mason_lspconfig.setup_handlers {
          -- The first entry (without a key) will be the default handler
          -- and will be called for each installed server that doesn't have
          -- a dedicated handler.
          function (server_name) -- default handler (optional)
              require("lspconfig")[server_name].setup {}
          end,
          -- Next, you can provide a dedicated handler for specific servers.
          -- For example, a handler override for the `rust_analyzer`:
      }
  end,
}

return M
