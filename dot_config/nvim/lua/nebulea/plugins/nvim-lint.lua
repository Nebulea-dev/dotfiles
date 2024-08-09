return {
  "mfussenegger/nvim-lint",
  config = function()
    vim.api.nvim_create_autocmd({ "BufReadPre", "BufEnter", "BufWritePost", "InsertLeave" }, {
      callback = function()
        local lint = require("lint")
        -- try_lint without arguments runs the linters defined in `linters_by_ft`
        -- for the current filetype
        lint.try_lint()
        -- You can call `try_lint` with a linter name or a list of names to always
        -- run specific linters, independent of the `linters_by_ft` configuration
        lint.try_lint({"write_good"}) --, "woke"})
      end,
    })
    -- local lint = require("lint")
    -- lint.linters_by_ft = {
    --  markdown = {"vale"}
    --}
  end,
}
