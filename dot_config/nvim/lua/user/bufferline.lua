local M = {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons'
}

function M.config()
  require("bufferline").setup({
    options = {
      mode = "buffers",
      offsets = {
        {
          filetype = "NvimTree",
          highlight = "Directory",
          separator = true
        }
      }
    }
  })
end

return M
