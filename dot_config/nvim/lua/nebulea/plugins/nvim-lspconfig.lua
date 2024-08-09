return {
 "neovim/nvim-lspconfig",
  opts = {
    diagnostics = {
      virtual_text = false,
    },
  },
  config = function()
    require("nvchad.configs.lspconfig").defaults()
    -- require "configs.lspconfig"
  end,
}
