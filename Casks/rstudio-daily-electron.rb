cask "rstudio-daily-electron" do
  version "2022.12.0+354"
  sha256 "2e440d2ab8860b95e2523fdeacfdac50918429a25549548b5266b96d2d036b80"

  url "https://s3.amazonaws.com/rstudio-ide-build/electron/macos/RStudio-2022.12.0-354.dmg"
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
