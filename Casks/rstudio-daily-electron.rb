cask "rstudio-daily-electron" do
  version "2024.10.0-daily+216"
  sha256 "d31a58ae7dd6596b067ca8fc76585b69944cd5a4e7f3f35728eed7c3418eb167"

  url "https://s3.amazonaws.com/rstudio-ide-build/electron/macos/RStudio-2024.10.0-daily-216.dmg"
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
