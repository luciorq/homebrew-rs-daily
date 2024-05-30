cask "rstudio-daily-electron" do
  version "2024.07.0-daily+178"
  sha256 "d23835b309e7ece2f1095d666b75b5502266ebc6281ff6d29e84b78421efa74b"

  url "https://s3.amazonaws.com/rstudio-ide-build/electron/macos/RStudio-2024.07.0-daily-178.dmg"
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
