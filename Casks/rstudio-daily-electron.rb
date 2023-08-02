cask "rstudio-daily-electron" do
  version "2023.09.0-daily+290"
  sha256 "0bec60195e6bf130ed655a2d804ffe558cd30c75a8c50802e939260415c6fe82"

  url "https://s3.amazonaws.com/rstudio-ide-build/electron/macos/RStudio-2023.09.0-daily-290.dmg"
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
