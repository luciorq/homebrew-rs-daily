cask "rstudio-daily-electron" do
  version "2024.07.0-daily+206"
  sha256 "434638aecb65be3d93ea33579b784f90196cdc18ab24058808b1900fcd659759"

  url "https://s3.amazonaws.com/rstudio-ide-build/electron/macos/RStudio-2024.07.0-daily-206.dmg"
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
