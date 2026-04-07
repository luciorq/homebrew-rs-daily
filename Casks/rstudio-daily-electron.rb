cask "rstudio-daily-electron" do
  version "2026.04.0-daily+476"
  sha256 "bf39912f2c26958e29f3c29e6b8658a14549d24bbb8cb5668a6f6a738bdc8100"

  url "https://s3.amazonaws.com/rstudio-ide-build/electron/macos/RStudio-2026.04.0-daily-476.dmg"
  name "RStudio"
  homepage "https://dailies.rstudio.com/rstudio/spotted-wakerobin/electron/macos/"

  conflicts_with cask: [
    "homebrew/cask-versions/rstudio-preview",
    "homebrew/cask-versions/rstudio-daily",
    "homebrew/cask-versions/rstudio@preview",
    "homebrew/cask-versions/rstudio@daily",
    "rstudio",
    "rstudio@daily",
    "rstudio@preview"
  ]

  app "RStudio.app"

  zap trash: "~/.rstudio-desktop"
end
