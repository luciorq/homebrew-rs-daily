cask "rstudio-daily-electron" do
  version "2022.11.0-daily+78"
  sha256 "fe4c6def6e3d33c88b4a7988241fd388897b9adcec68034475b74375dea62894"

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
