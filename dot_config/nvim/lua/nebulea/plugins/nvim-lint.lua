return {
  "mfussenegger/nvim-lint",
  config = function()
    vim.api.nvim_create_autocmd({ "BufReadPre", "BufEnter", "BufWritePost", "InsertLeave" }, {
      callback = function()
        local lint = require("lint")
        -- try_lint without arguments runs the linters defined in `linters_by_ft`
        -- for the current filetype
        -- lint.try_lint()


        -- Customize some linters with specific configs
        local write_good = lint.linters.write_good
        write_good.args = {
            "--no-passive"
        }

        -- You can call `try_lint` with a linter name or a list of names to always
        -- run specific linters, independent of the `linters_by_ft` configuration
        lint.try_lint({"write_good", "codespell"})
      end,
    })
    -- local lint = require("lint")
    -- lint.linters_by_ft = {
    --  markdown = {"vale"}
    --}
  end,
}
