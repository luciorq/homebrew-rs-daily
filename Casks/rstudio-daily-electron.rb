cask "rstudio-daily-electron" do
  version "2025.05.0+496"
  sha256 "49bb33e379f9c24cf66fa00881d3089efd6a206a2f7ba0f8d1f69fbb3db6da72"

  url "https://s3.amazonaws.com/rstudio-ide-build/electron/macos/RStudio-2025.05.0-496.dmg"
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
