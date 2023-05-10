cask "rstudio-daily-electron" do
  version "2023.05.0-daily+334"
  sha256 "9713c2b37c46391dcc7f883e51be2c2be51b8a390be2ea1bc0d39125b54d6505"

  url "https://s3.amazonaws.com/rstudio-ide-build/electron/macos/RStudio-2023.05.0-daily-334.dmg"
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
