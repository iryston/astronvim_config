return {
  git = {
    cmd = "git", -- The base command for git operations
    subcommands = { -- Format strings for git subcommands
      update = "pull --ff-only --progress --rebase=false",
      install = "clone --depth %i --no-single-branch --progress",
      fetch = "fetch --depth 999999 --progress",
      checkout = "checkout %s --",
      update_branch = "merge --ff-only @{u}",
      current_branch = "branch --show-current",
      diff = "log --color=never --pretty=format:FMT --no-show-signature HEAD@{1}...HEAD",
      diff_fmt = "%%h %%s (%%cr)",
      get_rev = "rev-parse --short HEAD",
      get_msg = "log --color=never --pretty=format:FMT --no-show-signature HEAD -n 1",
      submodules = "submodule update --init --recursive --progress",
    },
    depth = 1, -- Git clone depth
    clone_timeout = 60, -- Timeout, in seconds, for git clones
    default_url_format = "https://github.com/%s", -- Lua format string used for "aaa/bbb" style plugins
  },
}
