cask "rstudio-daily-electron" do
  version "2024.12.0+465"
  sha256 "20f14744fe149286d0e763200fb9dd691b5f03fd4ed3ce64ff8a2ef3758dca65"

  url "https://s3.amazonaws.com/rstudio-ide-build/electron/macos/RStudio-2024.12.0-465.dmg"
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
