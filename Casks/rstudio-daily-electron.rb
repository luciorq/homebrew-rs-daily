cask "rstudio-daily-electron" do
  version "2026.04.0-daily+410"
  sha256 "be16619b746ec099e0ce67097d63413a83f1132e4bde41a11dc88229f12903d5"

  url "https://s3.amazonaws.com/rstudio-ide-build/electron/macos/RStudio-2026.04.0-daily-410.dmg"
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
