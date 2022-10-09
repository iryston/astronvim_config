# How to install AstroNvim without overriding your existing Neovim configuration

[Read full article on dev.to](https://dev.to/vonheikemen/how-to-install-astronvim-without-overriding-your-existing-neovim-configuration-1nke)

[Original Gist](https://gist.github.com/VonHeikemen/1e82e8add1a5b9b2bdc767871af69514)

## Usage

Assuming you are using linux:

- Clone AstroNvim in the same location the variable `astro_config` gives you.

```bash
git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.local/share/astronvim/core
```

- Clone this configuration in the same location the variable user_path gives you.

```bash
git clone --depth 1 git@github.com:iryston/astronvim_config.git ~/.config/astronvim
```

Or create your own configuration manualy.

- Create a configuration folder in the same location the variable `user_path` gives you.

```bash
mkdir -p ~/.config/astronvim
```

- Copy the content of the gist in your config folder.

```bash
~/.config/astronvim/entry.lua
```

- Make an alias that uses the new entry point.

```bash
alias astro='nvim -u ~/.config/astronvim/entry.lua'
```

- Use the new command to open neovim with AstroNvim.

```bash
astro
```

To customize AstroNvim in this new setup create a lua module called `user` in the configuration folder.

```bash
mkdir -p ~/.config/astronvim/lua/user
```

Inside that new folder you create a file called `init.lua`. Check out this [example configuration](https://astronvim.github.io/Configuration/basic_configuration#example-user-configuration) to know what you can do.

Instead of running `astro +PackerSync` to initialize AstroNvim you can run the following command to do a fully headless initialization:

```bash
astro  --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
```
