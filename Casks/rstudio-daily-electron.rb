cask "rstudio-daily-electron" do
  version "2025.12.0-daily+284"
  sha256 "bf7aa602f8a189da9ebb528e5cbf6494476417f18d0c4df5c61199d386df197f"

  url "https://s3.amazonaws.com/rstudio-ide-build/electron/macos/RStudio-2025.12.0-daily-284.dmg"
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
