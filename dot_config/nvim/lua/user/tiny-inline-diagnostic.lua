local M = {
    "rachartier/tiny-inline-diagnostic.nvim",
  }

  function M.config()
  require("tiny-inline-diagnostic").setup {
      options = {
        multilines = false,
        virt_texts = {
          left = "◀ ",
          right = " ▶",
        },
      },
    }

    vim.diagnostic.config {
      virtual_text = false,  -- Disable default virtual text to avoid duplication
    }
  end

  return M
