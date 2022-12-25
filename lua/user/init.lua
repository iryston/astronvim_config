--              AstroNvim Configuration Table
-- All configuration changes should go inside of the table below
-- You can think of a Lua "table" as a dictionary like data structure the
-- normal format is "key = value". These also handle array like data structures
-- where a value with no key simply has an implicit numeric key
local user = {
  plugins = {},
}

-- Configure AstroNvim updates
user.updater = {
  remote = "origin", -- remote to use
  channel = "stable", -- "stable" or "nightly"
  version = "latest", -- "latest", tag name, or regex search like "v1.*" to only do updates before v2 (STABLE ONLY)
  -- branch = "main", -- branch name (NIGHTLY ONLY)
  -- commit = nil, -- commit hash (NIGHTLY ONLY)
  pin_plugins = nil, -- nil, true, false (nil will pin plugins on stable only)
  skip_prompts = false, -- skip prompts about breaking changes
  show_changelog = false, -- show the changelog after performing an update
  auto_reload = true, -- automatically reload and sync packer after a successful update
  auto_quit = false, -- automatically quit the current session after a successful update
  -- remotes = { -- easily add new remotes to track
  --   ["remote_name"] = "https://remote_url.come/repo.git", -- full remote url
  --   ["remote2"] = "github_user/repo", -- GitHub user/repo shortcut,
  --   ["remote3"] = "github_user", -- GitHub user assume AstroNvim fork
  -- },
}

-- Set colorscheme
user.colorscheme = "bluloco"

-- Add highlight groups in any theme
user.highlights = {
  -- init = { -- this table overrides highlights in all themes
  --   Normal = { bg = "#000000" },
  -- }
  -- duskfox = { -- a table of overrides/changes to the duskfox theme
  --   Normal = { bg = "#000000" },
  -- },
}

-- Set vim options
user.options = require "user.core.options"
-- Set vim mappings
user.mappings = require "user.core.mappings"

-- CMP Source Priorities
-- modify here the priorities of default cmp sources
-- higher value == higher priority
-- The value can also be set to a boolean for disabling default sources:
-- false == disabled
-- true == 1000
user.cmp = {
  source_priority = {
    nvim_lsp = 1000,
    luasnip = 750,
    buffer = 500,
    path = 250,
  },
}

-- Set dashboard header
user.header = { " {   ASTRONVIM PORTABLE  } " }

return user
