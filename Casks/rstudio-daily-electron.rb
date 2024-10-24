cask "rstudio-daily-electron" do
  version "2024.11.0-daily+319"
  sha256 "f5567786359d5819ada826c53d62819a4874d86dee39b340232a3e78450259f7"

  url "https://s3.amazonaws.com/rstudio-ide-build/electron/macos/RStudio-2024.11.0-daily-319.dmg"
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
