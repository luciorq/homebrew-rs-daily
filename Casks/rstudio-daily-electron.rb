cask "rstudio-daily-electron" do
  version "2022.06.0-daily+288"
  sha256 "5635b6b812b7073af87e6f59d50ad47814a8245d28a7ca74c0aa2a5e52422b2b"

  url "https://s3.amazonaws.com/rstudio-ide-build/electron/macos/RStudio-2022.06.0-daily-288.dmg"
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
