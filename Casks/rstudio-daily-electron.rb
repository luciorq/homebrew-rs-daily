cask "rstudio-daily-electron" do
  version "2022.06.0-daily+531"
  sha256 "70962d0ca75ba503a33ee96b70347d3277802bc4ad465c5914a59294c746c9f9"

  url "https://s3.amazonaws.com/rstudio-ide-build/electron/macos/RStudio-2022.06.0-daily-531.dmg"
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
