cask "rstudio-daily-electron" do
  version "2024.07.0-daily+108"
  sha256 "79a6785de045b54fa9a8f01aaa8b13477a3bd80674ec9645d609255a031cffe8"

  url "https://s3.amazonaws.com/rstudio-ide-build/electron/macos/RStudio-2024.07.0-daily-108.dmg"
  name "RStudio"
  homepage "https://dailies.rstudio.com/rstudio/spotted-wakerobin/electron/macos/"

  conflicts_with cask: [
    "homebrew/cask-versions/rstudio-preview",
    "homebrew/cask-versions/rstudio-daily",
    "rstudio"
  ]

  depends_on macos: ">= :high_sierra"

  app "RStudio.app"

  zap trash: "~/.rstudio-desktop"
end
