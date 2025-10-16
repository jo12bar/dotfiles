-- [[ Colorscheme config ]]

return {
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require("catppuccin").setup({
        flavour = "auto", -- latte, frappe, macchiato, mocha
        background = { -- :h background
          light = "latte",
          dark = "mocha",
        },
        -- dim_inactive = {
        --   enabled = true, -- dims the background color of inactive window
        --   shade = 'dark',
        --   percentage = 0.15, -- percentage of the shade to apply to the inactive window
        -- },
      })

      -- Load the colorscheme here.
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
