cask "rstudio-daily-electron" do
  version "2022.06.0-daily+307"
  sha256 "c6848154abb57f3409020a8d66315bd5f8cb21807f51623ee42ca0850021dc4e"

  url "https://s3.amazonaws.com/rstudio-ide-build/electron/macos/RStudio-2022.06.0-daily-307.dmg"
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
