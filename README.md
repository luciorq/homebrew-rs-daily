# RStudio Daily Electron-based Homebrew Formula

This project uses [just](https://github.com/casey/just) as the _Make_-like command runner system.

This project contains a [script](./src/build_formulas.sh) to update the Homebrew Cask Recipe,
that can be run with:

```bash
just build
```

The recipe can be used to install the [Electron-based RStudio daily build](https://dailies.rstudio.com/rstudio/spotted-wakerobin/electron/macos/) Cask with:

```bash
just install
```

