cask "rstudio-daily-electron" do
  version "2025.08.0+351"
  sha256 "36f8a618ce6eb54324b73d366142b641556c57076dd274138d98c6f70f734d83"

  url "https://s3.amazonaws.com/rstudio-ide-build/electron/macos/RStudio-2025.08.0-351.dmg"
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

  depends_on macos: ">= :high_sierra"

  app "RStudio.app"

  zap trash: "~/.rstudio-desktop"
end
