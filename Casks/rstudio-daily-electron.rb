cask "rstudio-daily-electron" do
  version "2023.12.0-daily+119"
  sha256 "3452bc96c3d584b4a34ee3a78c1ede2952e55e74ad39349944719c85c43ff444"

  url "https://s3.amazonaws.com/rstudio-ide-build/electron/macos/RStudio-2023.12.0-daily-119.dmg"
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
