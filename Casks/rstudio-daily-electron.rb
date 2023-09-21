cask "rstudio-daily-electron" do
  version "2023.09.0+448"
  sha256 "032753fa67507e0ca0b5f4ba5c116ee58f47cd1345bd4da643862f227715e59d"

  url "https://s3.amazonaws.com/rstudio-ide-build/electron/macos/RStudio-2023.09.0-448.dmg"
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
