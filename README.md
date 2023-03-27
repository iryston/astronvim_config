# Install AstroNvim without overriding your existing Neovim configuration

[Read full article on dev.to](https://dev.to/vonheikemen/how-to-install-astronvim-without-overriding-your-existing-neovim-configuration-1nke)

[Original Gist](https://gist.github.com/VonHeikemen/1e82e8add1a5b9b2bdc767871af69514)

## Requirements

Before proceeding, make sure you have installed the latest stable version of Neovim, which can be downloaded from the [releases page](https://github.com/neovim/neovim/releases/latest) on GitHub.

The full list of requirements for using AstroNvim is detailed in [this article](https://astronvim.com/#-requirements).

To execute commands in Neovim, type `:` followed by your command.

## Usage

- Open Neovim and execute this command:

```vim
echo substitute(stdpath('data'), '\(.*\)\zsnvim', 'astronvim', '')
```

- Clone AstroNvim repo as `"core"` in the same location as the output of the previous command.

For example (assuming you are using Linux or MacOS):

```bash
git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.local/share/astronvim/core
```

- Open Neovim and execute this command:

```vim
echo substitute(stdpath('config'), '\(.*\)\zsnvim', 'astronvim', '')
```

- Clone this configuration as `"astronvim"` in the same location as the output of the previous command.

For example (assuming you are using Linux or MacOS):

```bash
git clone --depth 1 git@github.com:iryston/astronvim_config.git ~/.config/astronvim
```

- Make an alias that uses the new entry point.

Add the following line to your shell configuration file (e.g. .bashrc or .zshrc) to create a persistent alias for opening Neovim with AstroNvim configuration.

```bash
alias astro='nvim -u ~/.config/astronvim/entry.lua'
```

Note: This command needs to be executed.

- Use the new command to open neovim with AstroNvim.

```bash
astro
```

For more information on customizing AstroNvim, check out the [official documentation](https://astronvim.com/) and the [example configuration](https://github.com/AstroNvim/user_example) on GitHub.
