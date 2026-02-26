# 💤 Neovim combined configs

Neovim configs for [LazyVim](https://www.lazyvim.org/), [AstroNvim](https://astronvim.com/), [NvChad](https://nvchad.com/) and my own config (maybe).

## Requirements

### Arch Linux

```sh
# Neovim
sudo pacman -S neovim

# git tar curl
sudo pacman -S git tar curl
# rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
. "$HOME/.cargo/env"
# python node npm go lua lua51
sudo pacman -S python nodejs npm go lua
# clang gcc make cmake
sudo pacman -S clang gcc make cmake

# Nerd Font
sudo pacman -S fontconfig
mkdir .tmp
curl -L --output-dir ".tmp" -O  https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip
curl -L --output-dir ".tmp" -O  https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Hack.zip
mkdir -p ~/.local/share/fonts/
unzip .tmp/JetBrainsMono.zip -d ~/.local/share/fonts/JetBrainsMono
unzip .tmp/Hack.zip -d ~/.local/share/fonts/Hack
fc-cache -f -v
rm -rf .tmp

# treesitter
cargo install --locked tree-sitter-cli

# lazygit fzf ripgrep fd luarocks
sudo pacman -S lazygit fzf ripgrep fd luarocks

# snacks.image
sudo pacman -S imagemagick ghostscript tectonic mermaid-cli

# go DiskUsage() bottom for Astronvim
sudo pacman -S gdu bottom

# Clipboard integration
# https://neovim.io/doc/user/provider.html#clipboard-tool

# Install a terminal
sudo pacman -S kitty wezterm ghostty
```

### Direct Install

```sh
# Neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim-linux-x86_64
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

# Nerd Font
mkdir .tmp
curl -L --output-dir ".tmp" -O  https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip
curl -L --output-dir ".tmp" -O  https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Hack.zip
mkdir -p ~/.local/share/fonts/
unzip .tmp/JetBrainsMono.zip -d ~/.local/share/fonts/JetBrainsMono
unzip .tmp/Hack.zip -d ~/.local/share/fonts/Hack
fc-cache -f -v
rm -rf .tmp

# lazygit
git clone https://github.com/jesseduffield/lazygit.git
cd lazygit
go install

# tree-sitter-cli
cargo install --locked tree-sitter-cli

# File find
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
cargo install ripgrep
cargo install fd-find

# go DiskUsage()
curl -L https://github.com/dundee/gdu/releases/latest/download/gdu_linux_amd64.tgz | tar xz
chmod +x gdu_linux_amd64
mv gdu_linux_amd64 /usr/bin/gdu

# bottom
cargo install bottom --locked

# Clipboard integration
# https://neovim.io/doc/user/provider.html#clipboard-tool

# Install a terminal
```

## Installation

### 🐧 Linux

```sh
# backup current config
rm -rf ~/.config/nvim.bak
rm -rf ~/.local/share/nvim.bak
rm -rf ~/.local/state/nvim.bak
rm -rf ~/.cache/nvim.bak
mv ~/.config/nvim{,.bak}
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}

# get new config
git clone https://github.com/bharathulaganathan/neovim ~/.config/nvim
```

### 🪁 Windows

```powershell
# backup current config
Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak
Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak

# get new config
git clone https://github.com/bharathulaganathan/neovim $env:LOCALAPPDATA\nvim
```

## Setting alias

```sh
DISTROS=("myvim" "lazyvim" "astronvim" "nvchad")

mkdir -p ~/.local/bin

for DISTRO in "${DISTROS[@]}"; do
    cat > ~/.local/bin/$DISTRO << EOF
#!/bin/bash
USER_HOME=\$(eval echo ~\$SUDO_USER)
HOME=\$USER_HOME NVIM_APPNAME=nvim/$DISTRO nvim "\$@"
EOF
    chmod +x ~/.local/bin/$DISTRO
done
```

## Fresh Install (Optional)

### [LazyVim](https://www.lazyvim.org/installation)

```sh
rm -rf ~/.config/nvim/lazyvim.bak
mv ~/.config/nvim/lazyvim{,.bak}
git clone https://github.com/LazyVim/starter ~/.config/nvim/lazyvim

# optional
rm -rf ~/.config/nvim/lazyvim/.git
```

### [AstroNvim](https://docs.astronvim.com/#-installation)

```sh
rm -rf ~/.config/nvim/astronvim.bak
mv ~/.config/nvim/astronvim{,.bak}
git clone --depth 1 https://github.com/AstroNvim/template ~/.config/nvim/astronvim

# optional
rm -rf ~/.config/nvim/astronvim/.git
```

### [NvChad](https://nvchad.com/docs/quickstart/install)

```sh
rm -rf ~/.config/nvim/nvchad.bak
mv ~/.config/nvim/nvchad{,.bak}
git clone https://github.com/NvChad/starter ~/.config/nvim/nvchad

# optional
rm -rf ~/.config/nvim/nvchad/.git
```

## Recommended Plugins:

### Plugin Manager

- [folke/lazy.nvim](https://github.com/folke/lazy.nvim)

### LSP

- [mason-org/mason-lspconfig.nvim](https://github.com/mason-org/mason-lspconfig.nvim)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [mason-org/mason.nvim](https://github.com/mason-org/mason.nvim)

### Diagnostics

- [folke/trouble.nvim](https://github.com/folke/trouble.nvim)

### Completion

- [saghen/blink.cmp](https://github.com/saghen/blink.cmp)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)

### Syntax

- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-treesitter/nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects)
- [nvim-treesitter/nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context)
- [kylechui/nvim-surround](https://github.com/kylechui/nvim-surround)
- [nvim-mini/mini.surround](https://github.com/nvim-mini/mini.surround)

### Snippet

- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [nvim-mini/mini.nvim#mini.snippets](https://github.com/nvim-mini/mini.nvim/blob/main/readmes/mini-snippets.md)

### Register

- [folke/snacks.nvim Register](https://github.com/folke/snacks.nvim)
- [gbprod/yanky.nvim](https://github.com/gbprod/yanky.nvim)
- [sahilsehwag/macrobank.nvim](https://github.com/sahilsehwag/macrobank.nvim)

### Marks

- [folke/snacks.nvim Marks](https://github.com/folke/snacks.nvim)
- [cbochs/grapple.nvim](https://github.com/cbochs/grapple.nvim)
- [chentoast/marks.nvim](https://github.com/chentoast/marks.nvim)

### Search

- [folke/snacks.nvim#picker](https://github.com/folke/snacks.nvim/blob/main/docs/picker.md)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [ibhagwan/fzf-lua](https://github.com/ibhagwan/fzf-lua)
- [MagicDuck/grug-far.nvim](https://github.com/MagicDuck/grug-far.nvim)
- [nvim-mini/mini.nvim#mini.fuzzy](https://github.com/nvim-mini/mini.nvim/blob/main/readmes/mini-fuzzy.md)
- [nvim-mini/mini.nvim#mini.pick](https://github.com/nvim-mini/mini.nvim/blob/main/readmes/mini-pick.md)
- [nvim-mini/mini.nvim#mini.extra](https://github.com/nvim-mini/mini.nvim/blob/main/readmes/mini-extra.md)

### File Explorer

- [nvim-neo-tree/neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [folke/snacks.nvim#explorer](https://github.com/folke/snacks.nvim/blob/main/docs/explorer.md)
- [mikavilpas/yazi.nvim](https://github.com/mikavilpas/yazi.nvim)
- [stevearc/oil.nvim](https://github.com/stevearc/oil.nvim)
- [nvim-mini/mini.nvim#mini.files](https://github.com/nvim-mini/mini.nvim/blob/main/readmes/mini-files.md)
- [nvim-tree/nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)

### Projects

- [folke/snacks.nvim Projects](https://github.com/folke/snacks.nvim)
- [coffebar/neovim-project](https://github.com/coffebar/neovim-project)
- [nvim-mini/mini.nvim#mini.visits](https://github.com/nvim-mini/mini.nvim/blob/main/readmes/mini-visits.md)

### Buffers

- [folke/snacks.nvim Buffers](https://github.com/folke/snacks.nvim)
- [j-morano/buffer_manager.nvim](https://github.com/j-morano/buffer_manager.nvim)
- [rgroli/other.nvim](https://github.com/rgroli/other.nvim)
- [chrisgrieser/nvim-early-retirement](https://github.com/chrisgrieser/nvim-early-retirement)
- [axkirillov/hbac.nvim](https://github.com/axkirillov/hbac.nvim)
- [kazhala/close-buffers.nvim](https://github.com/kazhala/close-buffers.nvim)

### Colour

- [catgoose/nvim-colorizer.lua](https://github.com/catgoose/nvim-colorizer.lua)
- [folke/twilight.nvim](https://github.com/folke/twilight.nvim)
- [uga-rosa/ccc.nvim](https://github.com/uga-rosa/ccc.nvim)
- [lcheylus/overlength.nvim](https://github.com/lcheylus/overlength.nvim)
- [xzbdmw/colorful-menu.nvim](https://github.com/xzbdmw/colorful-menu.nvim)
- [nvzone/minty](https://github.com/nvzone/minty)

### Colorscheme

- [projekt0n/github-nvim-theme](https://github.com/projekt0n/github-nvim-theme)
- [AstroNvim/astrotheme](https://github.com/AstroNvim/astrotheme)
- [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
- [rose-pine/neovim](https://github.com/rose-pine/neovim)
- [catppuccin/nvim](https://github.com/catppuccin/nvim)

### Colorscheme Creation

- [rktjmp/lush.nvim](https://github.com/rktjmp/lush.nvim)
- [tjdevries/colorbuddy.nvim](https://github.com/tjdevries/colorbuddy.nvim)

### Colorscheme Switchers

- [NvChad/base46](https://github.com/NvChad/base46)
- [zaldih/themery.nvim](https://github.com/zaldih/themery.nvim)
- [LmanTW/themify.nvim](https://github.com/LmanTW/themify.nvim)

### Bars and Lines

- [Bekaboo/deadcolumn.nvim](https://github.com/Bekaboo/deadcolumn.nvim)
- [Bekaboo/dropbar.nvim](https://github.com/Bekaboo/dropbar.nvim)
- [SmiteshP/nvim-navic](https://github.com/SmiteshP/nvim-navic)

### Statusline

- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [nvim-mini/mini.nvim#mini.statusline](https://github.com/nvim-mini/mini.nvim/blob/main/readmes/mini-statusline.md)
- [b0o/incline.nvim](https://github.com/b0o/incline.nvim)

### Tabline

- [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [romgrk/barbar.nvim](https://github.com/romgrk/barbar.nvim)
- [nvim-mini/mini.nvim#mini.tabline](https://github.com/nvim-mini/mini.nvim/blob/main/readmes/mini-tabline.md)

### Cursorline

- [RRethy/vim-illuminate](https://github.com/RRethy/vim-illuminate)
- [nvim-mini/mini.nvim#mini.cursorword](https://github.com/nvim-mini/mini.nvim/blob/main/readmes/mini-cursorword.md)

### Startup

- [nvimdev/dashboard-nvim](https://github.com/nvimdev/dashboard-nvim)
- [goolord/alpha-nvim](https://github.com/goolord/alpha-nvim)
- [nvim-mini/mini.nvim#mini.starter](https://github.com/nvim-mini/mini.nvim/blob/main/readmes/mini-starter.md)

### Icons

- [nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)
- [nvim-mini/mini.nvim#mini.icons](https://github.com/nvim-mini/mini.nvim/blob/main/readmes/mini-icons.md)

### Media

- [3rd/image.nvim](https://github.com/3rd/image.nvim)
- [adelarsq/image_preview.nvim](https://github.com/adelarsq/image_preview.nvim)
- [edluffy/hologram.nvim](https://github.com/edluffy/hologram.nvim)
- [HakonHarnes/img-clip.nvim](https://github.com/HakonHarnes/img-clip.nvim)
- [ekickx/clipboard-image.nvim](https://github.com/ekickx/clipboard-image.nvim)
- [niuiic/code-shot.nvim](https://github.com/niuiic/code-shot.nvim)

### Note Taking

- [nvim-neorg/neorg](https://github.com/nvim-neorg/neorg)
- [nvim-orgmode/orgmode](https://github.com/nvim-orgmode/orgmode)
- [obsidian-nvim/obsidian.nvim](https://github.com/obsidian-nvim/obsidian.nvim)
- [nvim-telekasten/telekasten.nvim](https://github.com/nvim-telekasten/telekasten.nvim)
- [jbyuki/venn.nvim](https://github.com/jbyuki/venn.nvim)
- [jakewvincent/mkdnflow.nvim](https://github.com/jakewvincent/mkdnflow.nvim)

### Utility

- [folke/snacks.nvim](https://github.com/folke/snacks.nvim)
- [nvim-mini/mini.nvim](https://github.com/nvim-mini/mini.nvim)
- [folke/noice.nvim](https://github.com/folke/noice.nvim)
- [jbyuki/instant.nvim](https://github.com/jbyuki/instant.nvim)
- [nvzone/showkeys](https://github.com/nvzone/showkeys)
- [nvzone/menu](https://github.com/nvzone/menu)
- [axieax/urlview.nvim](https://github.com/axieax/urlview.nvim)
- [mistricky/codesnap.nvim](https://github.com/mistricky/codesnap.nvim) 
- [glyccogen/imprint.nvim](https://github.com/glyccogen/imprint.nvim)

### CSV Files

- [hat0uma/csvview.nvim](https://github.com/hat0uma/csvview.nvim)

### Animation

- [sphamba/smear-cursor.nvim](https://github.com/sphamba/smear-cursor.nvim)
- [karb94/neoscroll.nvim](https://github.com/karb94/neoscroll.nvim)
- [anuvyklack/windows.nvim](https://github.com/anuvyklack/windows.nvim)
- [rachartier/tiny-glimmer.nvim](https://github.com/rachartier/tiny-glimmer.nvim)
- [y3owk1n/undo-glow.nvim](https://github.com/y3owk1n/undo-glow.nvim)
- [nvim-mini/mini.nvim#mini.animate](https://github.com/nvim-mini/mini.nvim/blob/main/readmes/mini-animate.md)

### Terminal

- [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- [nvzone/floaterm](https://github.com/nvzone/floaterm)
- [willothy/flatten.nvim](https://github.com/willothy/flatten.nvim)
- [numToStr/FTerm.nvim](https://github.com/numToStr/FTerm.nvim)
- [kassio/neoterm](https://github.com/kassio/neoterm)
- [folke/snacks.nvim#terminal](https://github.com/folke/snacks.nvim/blob/main/docs/terminal.md)

### Debugging

- [mfussenegger/nvim-dap](https://github.com/mfussenegger/nvim-dap)
- [rcarriga/nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
- [theHamsta/nvim-dap-virtual-text](https://github.com/theHamsta/nvim-dap-virtual-text)
- [pocco81/dap-buddy.nvim](https://github.com/pocco81/dap-buddy.nvim)
- [Weissle/persistent-breakpoints.nvim](https://github.com/Weissle/persistent-breakpoints.nvim)
- [niuiic/dap-utils.nvim](https://github.com/niuiic/dap-utils.nvim)
- [ofirgall/goto-breakpoints.nvim](https://github.com/ofirgall/goto-breakpoints.nvim)
- [ravsii/nvim-dap-envfile](https://github.com/ravsii/nvim-dap-envfile)
- [andrewferrier/debugprint.nvim](https://github.com/andrewferrier/debugprint.nvim)
- [chrisgrieser/nvim-chainsaw](https://github.com/chrisgrieser/nvim-chainsaw)

### Quickfix

- [kevinhwang91/nvim-bqf](https://github.com/kevinhwang91/nvim-bqf)
- [stevearc/quicker.nvim](https://github.com/stevearc/quicker.nvim)

### Deployment

- [OscarCreator/rsync.nvim](https://github.com/OscarCreator/rsync.nvim)
- [sachinsenal0x64/hot.nvim](https://github.com/sachinsenal0x64/hot.nvim)

### Test

- [nvim-neotest/neotest](https://github.com/nvim-neotest/neotest)

### Code Runner

- [stevearc/overseer.nvim](https://github.com/stevearc/overseer.nvim)
- [michaelb/sniprun](https://github.com/michaelb/sniprun)
- [Vigemus/iron.nvim](Vigemus/iron.nvim)
- [benlubas/molten-nvim](https://github.com/benlubas/molten-nvim)
- [CRAG666/code_runner.nvim](https://github.com/CRAG666/code_runner.nvim)

### Neovim Lua Development

- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [folke/lazydev.nvim](https://github.com/folke/lazydev.nvim)
- [MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim)
- [DrKJeff16/wezterm-types](https://github.com/DrKJeff16/wezterm-types?tab=readme-ov-file)

### Funnel

- [Olical/conjure](https://github.com/Olical/conjure)

### Dependency Management

- [LazyDeveloperHelper/LazyDeveloperHelper](https://github.com/LazyDeveloperHelper/LazyDeveloperHelper)
- [piersolenski/import.nvim](https://github.com/piersolenski/import.nvim)
- [DrKJeff16/pipenv.nvim](https://github.com/DrKJeff16/pipenv.nvim)
- [Saecki/crates.nvim](https://github.com/Saecki/crates.nvim)
- [vuki656/package-info.nvim](https://github.com/vuki656/package-info.nvim)

### Git

- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [akinsho/git-conflict.nvim](https://github.com/akinsho/git-conflict.nvim)
- [sindrets/diffview.nvim](https://github.com/sindrets/diffview.nvim)
- [kdheepak/lazygit.nvim](https://github.com/kdheepak/lazygit.nvim)
- [f-person/git-blame.nvim](https://github.com/f-person/git-blame.nvim)
- [nvim-mini/mini.nvim#mini.diff](https://github.com/nvim-mini/mini.nvim/blob/main/readmes/mini-diff.md)
- [nvim-mini/mini.nvim#mini.git](https://github.com/nvim-mini/mini.nvim/blob/main/readmes/mini-git.md)
- [NeogitOrg/neogit](https://github.com/NeogitOrg/neogit)
- [esmuellert/codediff.nvim](https://github.com/esmuellert/codediff.nvim)

### GitHub

- [2KAbhishek/octohub.nvim](https://github.com/2KAbhishek/octohub.nvim)

### Motion

- [folke/flash.nvim](https://github.com/folke/flash.nvim)
- [ggandor/leap.nvim](https://github.com/ggandor/leap.nvim)
- [smoka7/hop.nvim](https://github.com/smoka7/hop.nvim)
- [tris203/precognition.nvim](https://github.com/tris203/precognition.nvim)
- [abecodes/tabout.nvim](https://github.com/abecodes/tabout.nvim)
- [chrisgrieser/nvim-spider](https://github.com/chrisgrieser/nvim-spider)
- [aaronik/Treewalker.nvim](https://github.com/aaronik/Treewalker.nvim)
- [nvim-mini/mini.nvim#mini.jump](https://github.com/nvim-mini/mini.nvim/blob/main/readmes/mini-jump.md)
- [nvim-mini/mini.nvim#mini.jump2d](https://github.com/nvim-mini/mini.nvim/blob/main/readmes/mini-jump2d.md)
- [nvim-mini/mini.nvim#mini.bracketed](https://github.com/nvim-mini/mini.nvim/blob/main/readmes/mini-bracketed.md)

### Keybinding

- [folke/which-key.nvim](https://github.com/folke/which-key.nvim)
- [nvim-mini/mini.nvim#mini.clue](https://github.com/nvim-mini/mini.nvim/blob/main/readmes/mini-clue.md)
- [mrjones2014/legendary.nvim](https://github.com/mrjones2014/legendary.nvim)
- [nvim-mini/mini.nvim#mini.keymap](https://github.com/nvim-mini/mini.nvim/blob/main/readmes/mini-keymap.md)

### Scrolling

- [karb94/neoscroll.nvim](https://github.com/karb94/neoscroll.nvim)
- [saghen/filler-begone.nvim](https://github.com/saghen/filler-begone.nvim)

### Scrollbar

- [petertriho/nvim-scrollbar](https://github.com/petertriho/nvim-scrollbar)
- [gorbit99/codewindow.nvim](https://github.com/gorbit99/codewindow.nvim)
- [lewis6991/satellite.nvim](https://github.com/lewis6991/satellite.nvim)

### [Editing Support](https://github.com/rockerBOO/awesome-neovim?tab=readme-ov-file#editing-support)

- [nguyenvukhang/nvim-toggler](https://github.com/nguyenvukhang/nvim-toggler)
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [nvim-mini/mini.nvim#mini.pairs](https://github.com/nvim-mini/mini.nvim/blob/main/readmes/mini-pairs.md)
- [monaqa/dial.nvim](https://github.com/monaqa/dial.nvim)
- [folke/zen-mode.nvim](https://github.com/folke/zen-mode.nvim)
- [nvim-mini/mini.nvim#mini.trailspace](https://github.com/nvim-mini/mini.nvim/blob/main/readmes/mini-trailspace.md)
- [nvim-mini/mini.nvim#mini.operators](https://github.com/nvim-mini/mini.nvim/blob/main/readmes/mini-operators.md)
- [nvim-mini/mini.nvim#mini.move](https://github.com/nvim-mini/mini.nvim/blob/main/readmes/mini-move.md)
- [nvim-mini/mini.nvim#mini.ai](https://github.com/nvim-mini/mini.nvim/blob/main/readmes/mini-ai.md)
- [Wansmer/treesj](https://github.com/Wansmer/treesj)
- [nvim-mini/mini.nvim#mini.splitjoin](https://github.com/nvim-mini/mini.nvim/blob/main/readmes/mini-splitjoin.md)
- [nvim-mini/mini.nvim#mini.basics](https://github.com/nvim-mini/mini.nvim/blob/main/readmes/mini-basics.md)
- [tomiis4/hypersonic.nvim](https://github.com/tomiis4/hypersonic.nvim)
- [nat-418/boole.nvim](https://github.com/nat-418/boole.nvim)
- [nemanjamalesija/smart-paste.nvim](https://github.com/nemanjamalesija/smart-paste.nvim)
- [XXiaoA/atone.nvim](https://github.com/XXiaoA/atone.nvim)
- [debugloop/telescope-undo.nvim](https://github.com/debugloop/telescope-undo.nvim)
- [jake-stewart/multicursor.nvim](https://github.com/jake-stewart/multicursor.nvim)

### Comment

- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [folke/todo-comments.nvim](https://github.com/folke/todo-comments.nvim)
- [folke/ts-comments.nvim](https://github.com/folke/ts-comments.nvim)
- [danymat/neogen](https://github.com/danymat/neogen)
- [JoosepAlviste/nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring)
- [nvim-mini/mini.nvim#mini.comment](https://github.com/nvim-mini/mini.nvim/blob/main/readmes/mini-comment.md)

### Folding

- [kevinhwang91/nvim-ufo](https://github.com/kevinhwang91/nvim-ufo)
- [chrisgrieser/nvim-origami](https://github.com/chrisgrieser/nvim-origami)

### Formatting

- [stevearc/conform.nvim](https://github.com/stevearc/conform.nvim)
- [sbdchd/neoformat](https://github.com/sbdchd/neoformat)
- [mhartington/formatter.nvim](https://github.com/mhartington/formatter.nvim)
- [nvim-mini/mini.nvim#mini.align](https://github.com/nvim-mini/mini.nvim/blob/main/readmes/mini-align.md)

### Indent

- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [shellRaining/hlchunk.nvim](https://github.com/shellRaining/hlchunk.nvim)
- [NMAC427/guess-indent.nvim](https://github.com/NMAC427/guess-indent.nvim)
- [nvim-mini/mini.nvim#mini.indentscope](https://github.com/nvim-mini/mini.nvim/blob/main/readmes/mini-indentscope.md)

### Command Line

- [gelguy/wilder.nvim](https://github.com/gelguy/wilder.nvim)
- [nvim-mini/mini.nvim#mini.cmdline](https://github.com/nvim-mini/mini.nvim/blob/main/readmes/mini-cmdline.md)

### Session

- [rmagatti/auto-session](https://github.com/rmagatti/auto-session)
- [folke/persistence.nvim](https://github.com/folke/persistence.nvim)
- [nvim-mini/mini.nvim#sessions](https://github.com/nvim-mini/mini.nvim/blob/main/readmes/mini-sessions.md)

### Remote Development

- [chipsenkbeil/distant.nvim](https://github.com/chipsenkbeil/distant.nvim)
- [jamestthompson3/nvim-remote-containers](https://github.com/jamestthompson3/nvim-remote-containers)
- [esensar/nvim-dev-container](https://github.com/esensar/nvim-dev-container)

### Split and Window

- [mrjones2014/smart-splits.nvim](https://github.com/mrjones2014/smart-splits.nvim)
- [nvim-focus/focus.nvim](https://github.com/nvim-focus/focus.nvim)
- [nvim-zh/colorful-winsep.nvim](https://github.com/nvim-zh/colorful-winsep.nvim)
- [anuvyklack/windows.nvim](https://github.com/anuvyklack/windows.nvim)
- [sindrets/winshift.nvim](https://github.com/sindrets/winshift.nvim)
- [nvim-mini/mini.nvim#mini.bufremove](https://github.com/nvim-mini/mini.nvim/blob/main/readmes/mini-bufremove.md)

### Competitive Programming

- [kawre/leetcode.nvim](https://github.com/kawre/leetcode.nvim)
- [2KAbhishek/exercism.nvim](https://github.com/2KAbhishek/exercism.nvim)
- [barrettruth/cp.nvim](https://github.com/barrettruth/cp.nvim)

### Workflow

- [m4xshen/hardtime.nvim](https://github.com/m4xshen/hardtime.nvim)
- [saxon1964/neovim-tips](https://github.com/saxon1964/neovim-tips)

### Stats Tracking

- [gisketch/triforce.nvim](https://github.com/gisketch/triforce.nvim)
- [aikhe/wrapped.nvim](https://github.com/aikhe/wrapped.nvim)
- [QuentinGruber/pomodoro.nvim](https://github.com/QuentinGruber/pomodoro.nvim)
- [nvzone/timerly](https://github.com/nvzone/timerly)
- [Rtarun3606k/takatime](https://github.com/Rtarun3606k/takatime)
- [ravsii/timers.nvim](https://github.com/ravsii/timers.nvim)

### Automation

- [mateuszwieloch/automkdir.nvim](https://github.com/mateuszwieloch/automkdir.nvim)
- [jghauser/mkdir.nvim](https://github.com/jghauser/mkdir.nvim)

### Database

- [kndndrj/nvim-dbee](https://github.com/kndndrj/nvim-dbee)

### TODO FIND

- Rainbow Parentheses


