cask "rstudio-daily-electron" do
  version "2023.03.0+386"
  sha256 "ed87b818ddc02c2f565b21f1d736b278243f499e37ccd12d4ff150914a9647a5"

  url "https://s3.amazonaws.com/rstudio-ide-build/electron/macos/RStudio-2023.03.0-386.dmg"
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
