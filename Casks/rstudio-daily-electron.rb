cask "rstudio-daily-electron" do
  version "2023.03.0-hourly+683"
  sha256 "029accbf2c063a62a421cd541935dff4ca8cc4536b01207bf6f8cfdab7494148"

  url "https://s3.amazonaws.com/rstudio-ide-build/electron/macos/RStudio-2023.03.0-hourly-683.dmg"
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
