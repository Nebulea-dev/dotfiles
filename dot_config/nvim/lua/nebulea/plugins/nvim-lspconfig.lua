return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
  },
  opts = {
    diagnostics = {
      virtual_text = false,
    },
  },
  config = function()
    local nvim_lsp = require('lspconfig')

    nvim_lsp.util.on_setup = nvim_lsp.util.add_hook_before(nvim_lsp.util.on_setup, function(config)
      local cwd = vim.loop.cwd()
      if config.name == 'tsserver' and vim.fn.filereadable(cwd .. '/deno.json') == 1 then
        config.single_file_support = false
      end
    end)
  end,
}
