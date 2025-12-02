cask "rstudio-daily-electron" do
  version "2025.12.0-daily+376"
  sha256 "5dcfd187866a8a3b7b4a7c618df5850dc3b3d8f4b4f9a4bfa3fb27d14c32f703"

  url "https://s3.amazonaws.com/rstudio-ide-build/electron/macos/RStudio-2025.12.0-daily-376.dmg"
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
