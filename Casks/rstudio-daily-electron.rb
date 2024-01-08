cask "rstudio-daily-electron" do
  version "2024.04.0-daily+190"
  sha256 "dc10f4e6fe49c8e6850c887771b9b821973d208e60283af168396edff7405790"

  url "https://s3.amazonaws.com/rstudio-ide-build/electron/macos/RStudio-2024.04.0-daily-190.dmg"
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
