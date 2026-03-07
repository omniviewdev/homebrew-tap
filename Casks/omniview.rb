cask "omniview" do
  version "0.2.1"
  sha256 "97aec62bc596f811220520dc004c401c898c3d11b1e5612968cddeb8c39be1b8"

  url "https://github.com/omniviewdev/omniview/releases/download/v#{version}/Omniview_#{version}_darwin_universal.dmg"
  name "Omniview"
  desc "Open-source, pluggable IDE for Kubernetes and DevOps"
  homepage "https://github.com/omniviewdev/omniview"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Omniview.app"

  zap trash: [
    "~/Library/Application Support/com.omniview.omniview",
    "~/Library/Caches/com.omniview.omniview",
    "~/Library/Preferences/com.omniview.omniview.plist",
    "~/.omniview",
  ]
end
