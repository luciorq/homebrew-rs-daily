cask "rstudio-daily-electron" do
  version "2024.08.0+331"
  sha256 "166f123cfce55fe847411ef31932c82171e6ad57598458fd03fde5995da0a6b4"

  url "https://s3.amazonaws.com/rstudio-ide-build/electron/macos/RStudio-2024.08.0-331.dmg"
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
