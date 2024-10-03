cask "rstudio-daily-electron" do
  version "2024.11.0-daily+261"
  sha256 "5dd08a8bb513e249c00d64986e24df44901d50254c2290726ea67403ea28984a"

  url "https://s3.amazonaws.com/rstudio-ide-build/electron/macos/RStudio-2024.11.0-daily-261.dmg"
  name "RStudio"
  homepage "https://dailies.rstudio.com/rstudio/spotted-wakerobin/electron/macos/"

  conflicts_with cask: [
    "homebrew/cask-versions/rstudio-preview",
    "homebrew/cask-versions/rstudio-daily",
    "homebrew/cask-versions/rstudio@preview",
    "homebrew/cask-versions/rstudio@daily",
    "rstudio",
    "rstudio@daily",
    "rstudio@preview"
  ]

  depends_on macos: ">= :high_sierra"

  app "RStudio.app"

  zap trash: "~/.rstudio-desktop"
end
