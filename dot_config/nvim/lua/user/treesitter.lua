local M = {
  "nvim-treesitter/nvim-treesitter",
  version = nil,
  event = { "BufReadPost", "BufNewFile" },
  build = ":TSUpdate",
}

function M.config()
  require("nvim-treesitter.configs").setup {
    -- ensure_installed = { "lua", "markdown", "markdown_inline", "bash", "python" },
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true },
  }
end

return M
