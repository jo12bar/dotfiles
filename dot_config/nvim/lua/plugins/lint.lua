return { -- Linting
  -- NOTE: Lint tools are installed by Mason in lsp.lua (since that's where
  -- Mason is set up)
  {
    "mfussenegger/nvim-lint",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local lint = require("lint")

      -- Setup the linters table like this so other plugins can add to it if
      -- they want
      lint.linters_by_ft = lint.linters_by_ft or {}

      -- Downside of the above: we have to explicitly disable a bunch of
      -- defualt linters set by nvim-lint, or else we'll get errors when
      -- opening any of these filetypes if the linter tool isn't already
      -- installed.
      -- Refer to the below link for the list:
      -- https://github.com/mfussenegger/nvim-lint/blob/9da1fb942dd0668d5182f9c8dee801b9c190e2bb/lua/lint.lua#L39-L50
      lint.linters_by_ft["text"] = nil
      lint.linters_by_ft["json"] = nil
      lint.linters_by_ft["rst"] = nil
      lint.linters_by_ft["ruby"] = nil
      lint.linters_by_ft["janet"] = nil
      lint.linters_by_ft["inko"] = nil
      lint.linters_by_ft["clojure"] = nil
      lint.linters_by_ft["dockerfile"] = nil
      lint.linters_by_ft["terraform"] = nil

      -- Markdown linting is by `markdownlint` (installed by Mason in lsp.lua)
      lint.linters_by_ft["markdown"] = { "markdownlint" }

      -- This autocommand actually carries out the linting on the specified
      -- events
      local lint_augroup = vim.api.nvim_create_augroup("link", { clear = true })
      vim.api.nvim_create_autocmd(
        { "BufEnter", "BufWritePost", "InsertLeave" },
        {
          group = lint_augroup,
          callback = function()
            -- Only run the linter in buffers that you can modify in order to
            -- avoid superfluous noise, notably within the handy LSP pop-ups that
            -- describe the hovered symbol using Markdown.
            if vim.bo.modifiable then
              lint.try_lint()
            end
          end,
        }
      )
    end,
  },
}
