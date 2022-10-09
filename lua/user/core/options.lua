return {
  opt = {
    -- set to true or false etc.
    signcolumn = "auto", -- sets vim.opt.signcolumn to auto
    wrap = true, -- sets vim.opt.wrap
    conceallevel = 2, -- enable conceal
    foldenable = false,
    foldexpr = "nvim_treesitter#foldexpr()", -- set Treesitter based folding
    foldmethod = "expr",
    linebreak = true, -- linebreak soft wrap at words
    list = true, -- show whitespace characters
    listchars = {
      tab = "│→",
      extends = "⟩",
      precedes = "⟨",
      trail = "·",
      nbsp = "␣",
      eol = "↲",
    },
    shortmess = vim.opt.shortmess + {
      I = true,
    },
    showbreak = "↪ ",
    scrolloff = 2, -- Number of lines to keep above and below the cursor
    sidescrolloff = 2, -- Number of columns to keep at the sides of the cursor
    spell = true, -- sets vim.opt.spell
    -- spellfile = "~/.config/nvim/lua/user/spell/en.utf-8.add",
    -- thesaurus = "~/.config/nvim/lua/user/spell/mthesaur.txt",
    -- langmap
    langmap = {
      "ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯХЪЖБЮЁ;ABCDEFGHIJKLMNOPQRSTUVWXYZ{}:<>~",
      "фисвуапршолдьтщзйкыегмцчняхъюё;abcdefghijklmnopqrstuvwxyz[].`",
      "э;'",
      'Э;"',
      "ж;\\;",
      "б;\\,",
      "№;#",
    },
    colorcolumn = "80,120",
    number = true, -- sets vim.opt.number
    relativenumber = false, -- sets vim.opt.relativenumber
    whichwrap = "b,s,h,l,<,>,[,]",
  },
  g = {
    mapleader = " ", -- sets vim.g.mapleader
    cmp_enabled = true, -- enable completion at start
    autopairs_enabled = true, -- enable autopairs at start
    diagnostics_enabled = true, -- enable diagnostics at start
    status_diagnostics_enabled = true, -- enable diagnostics in statusline
  },
}
