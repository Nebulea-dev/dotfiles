local M = {
  "eandrju/cellular-automaton.nvim",
}

function M.config()
  local wk = require "which-key"
  wk.add {
    { "<leader>ym", "<cmd>CellularAutomaton make_it_rain<CR>", desc = "Make it rain" },
    { "<leader>yg", "<cmd>CellularAutomaton game_of_life<CR>", desc = "Game of life" },
  }
end

return M
