return {
  "williamboman/mason.nvim",
  opts = {
		ensure_installed = {
      "lua-language-server", "stylua",
  		"html-lsp", "css-lsp" , "prettier"
  	},
  },
  config = function()
    local mason = require("mason")
    mason.setup()
  end,
}
