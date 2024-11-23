cask "rstudio-daily-electron" do
  version "2024.12.0+456"
  sha256 "6bfa3a62d15ddae3fae29d06a39b3de7d0dea645d7fd3c3417561928259ceb77"

  url "https://s3.amazonaws.com/rstudio-ide-build/electron/macos/RStudio-2024.12.0-456.dmg"
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
