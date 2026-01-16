cask "rstudio-daily-electron" do
  version "<<<RS_VERSION>>>"
  sha256 "<<<RS_SHA>>>"

  url "<<<RS_URL>>>"
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

  app "RStudio.app"

  zap trash: "~/.rstudio-desktop"
end
