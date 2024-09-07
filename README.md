# Neovim Config

My personal Neovim configuration. Feel free to use as so:

```
// Back up your previous config, if any:
cd ~/.config
mv nvim nvim.bak

// Get the new config:
git clone https://github.com/lukeburton00/nvim-config
mv nvim-config nvim
```

If you're replacing your current config, don't forget to delete your previous Neovim data,
usually located at:
- ~/.local/share/nvim 
- ~/.local/state/nvim
- ~/.cache/nvim

## LSP setup

```Mason``` and ```nvim-lspconfig``` are set up to automatically configure any language server you install locally.

Example:

```:MasonInstall clangd```

You can now open a C/C++ file and get to work!
