cask "rstudio-daily-electron" do
  version "2026.04.0-daily+123"
  sha256 "1a660699fe1908c484815c8bc3230ee7f6bb60a53cb8a079c30608261cbadb64"

  url "https://s3.amazonaws.com/rstudio-ide-build/electron/macos/RStudio-2026.04.0-daily-123.dmg"
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
