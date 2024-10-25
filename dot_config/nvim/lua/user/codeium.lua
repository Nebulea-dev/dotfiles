local M = {
  'Exafunction/codeium.vim',
  event = 'BufEnter',

  config = function ()
    local wk = require "which-key"
    wk.add {
      { "<leader>yu", "<cmd>Codeium Chat<CR>", desc = "Codeium Chat" },
    }
  end
}

return M
