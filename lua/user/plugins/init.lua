-- Override default plugins
return {
  -- Add plugins, the packer syntax without the "use"
  init = {
    -- disable plugins:
    -- ["akinsho/bufferline.nvim"] = { disable = true }
    -- ["mrjones2014/smart-splits.nvim"] = { disable = true },
    { "sheerun/vim-polyglot" },
    {
      "nacro90/numb.nvim",
      config = function()
        require("numb").setup {
          show_numbers = true, -- Enable 'number' for the window while peeking
          show_cursorline = true, -- Enable 'cursorline' for the window while peeking
          hide_relativenumbers = true, -- Enable turning off 'relativenumber' for the window while peeking
          number_only = true, -- Peek only when the command is only a number instead of when it starts with a number
          centered_peeking = true, -- Peeked line will be centered relative to window
        }
      end,
    },
    {
      "folke/tokyonight.nvim",
      config = function()
        require("tokyonight").setup {
          -- use the night style
          style = "night",
          sidebars = { "neo-tree", "terminal", "packer" },
          day_brightness = 0.1,
          dim_inactive = true,
          -- on_colors = function(colors)
          --     colors.bg = "#1e1e1e"
          -- end
        }
      end,
    },
  },
}
