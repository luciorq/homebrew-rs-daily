cask "rstudio-daily-electron" do
  version "2022.12.0-preview+328"
  sha256 "ccb9b84d8fd1dafcd9c6525a872999d8e2951dc3d0322cb141ff0278ec6b066c"

  url "https://s3.amazonaws.com/rstudio-ide-build/electron/macos/RStudio-2022.12.0-preview-328.dmg"
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
