cask "rstudio-daily-electron" do
  version "2022.11.0-daily+78"
  sha256 "4b1ab10ec1eddb3b031b72c57d449ef1c71c122f23c16ecc19736a278ebaab7d"

  url "https://s3.amazonaws.com/rstudio-ide-build/electron/macos/RStudio-2022.11.0-daily-78.dmg"
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
