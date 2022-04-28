cask "rstudio-daily-electron" do
  version "2022.06.0-daily+339"
  sha256 "daac78e70fdea994f18326b6916be1b2b413b93dac267c2a446f0562964a0232"

  url "https://s3.amazonaws.com/rstudio-ide-build/electron/macos/RStudio-2022.06.0-daily-339.dmg"
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
