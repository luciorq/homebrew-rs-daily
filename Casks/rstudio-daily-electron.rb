cask "rstudio-daily-electron" do
  version "2026.11.0-daily+140"
  sha256 "1f353d91bf1b91bb2c129b16bbe0c6093cd9a77ef8b79cbf111fa1fb2993c295"

  url "https://dl.dailies.rstudio.com/electron/macos/RStudio-2026.11.0-daily-140.dmg"
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
