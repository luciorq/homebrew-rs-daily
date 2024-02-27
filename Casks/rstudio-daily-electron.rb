cask "rstudio-daily-electron" do
  version "2024.04.0-daily+497"
  sha256 "3cb98c18f5c2119d75cdf328fd1f987b316a8fa695b56df1099b1dee3cd0cab5"

  url "https://s3.amazonaws.com/rstudio-ide-build/electron/macos/RStudio-2024.04.0-daily-497.dmg"
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
