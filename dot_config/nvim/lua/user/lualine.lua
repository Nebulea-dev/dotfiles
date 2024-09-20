local M = {
  "nvim-lualine/lualine.nvim",
}

function M.config()
  require("lualine").setup {
    options = { theme = "onedark" },
    extensions = { "quickfix", "man", "fugitive" },
  }
end

return M
