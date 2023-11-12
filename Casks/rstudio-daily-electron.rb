cask "rstudio-daily-electron" do
  version "2023.12.0-daily+278"
  sha256 "02d8343b4490ded467f72d7782e62162951d471aac8dd56acbe20936a013ac2d"

  url "https://s3.amazonaws.com/rstudio-ide-build/electron/macos/RStudio-2023.12.0-daily-278.dmg"
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
