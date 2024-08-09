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
}
