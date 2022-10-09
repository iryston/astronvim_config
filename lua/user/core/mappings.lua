-- Override default mappings
return {
  -- Override default mappings
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- navigating wrapped lines
    ["j"] = {
      "gj",
      desc = "Nagivate down",
    },
    ["k"] = {
      "gk",
      desc = "Nagivate up",
    },
    ["<Down>"] = {
      "gj",
      desc = "Nagivate down",
    },
    ["<Up>"] = {
      "gk",
      desc = "Nagivate up",
    },
    ["<C-s>"] = {
      "<cmd>w!<cr>",
      desc = "Save File",
    },
    ["cop"] = {
      "<cmd>set paste!<cr>",
      desc = "Toggle paste mode",
    },
    ["cow"] = {
      "<cmd>set wrap!<cr>",
      desc = "Toggle wrap lines",
    },
    ["con"] = {
      "<cmd>set number!<cr>",
      desc = "Toggle numberline",
    },
    ["cor"] = {
      "<cmd>set relativenumber!<cr>",
      desc = "Toggle relative numberline",
    },
    ["cob"] = {
      "<cmd>let &background=(&background=='light'?'dark':'light')<bar>redraw<cr>",
      desc = "Toggle background",
    },
    -- NeoTree
    -- ["<leader>b"] = {
    --     "<cmd>Neotree buffers<cr>",
    --     desc = "Buffers explorer"
    -- }
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
