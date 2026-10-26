
default:
  @just --choose

# Build the recipe - Run this first
build:
  #!/usr/bin/env bash
  set -euxo pipefail;
  source src/build_formulas.sh;
  rs_version="$(build_formulas)";
  git add --all;
  git commit -m "chore: version upgrade - ${rs_version}";
  git push;

# Install RStudio from the recipe
install:
  #!/usr/bin/env bash
  set -euxo pipefail;
  brew update;
  brew tap luciorq/homebrew-rs-daily;
  brew upgrade --cask rstudio-daily-electron;

