cask "rstudio-daily-electron" do
  version "2024.04.0-daily+567"
  sha256 "27f95b26f40f90febd790723b75ed99677b4806af20d2d592453cf2ba61acc21"

  url "https://s3.amazonaws.com/rstudio-ide-build/electron/macos/RStudio-2024.04.0-daily-567.dmg"
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
