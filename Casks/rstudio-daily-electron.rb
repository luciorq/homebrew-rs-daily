cask "rstudio-daily-electron" do
  version "2024.11.0-daily+277"
  sha256 "de42617673abdc7e54f6721d891e4af63d5de42c52e6826e1271bf7ec87a9548"

  url "https://s3.amazonaws.com/rstudio-ide-build/electron/macos/RStudio-2024.11.0-daily-277.dmg"
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
