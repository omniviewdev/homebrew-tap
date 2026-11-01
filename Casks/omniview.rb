cask "omniview" do
  version "0.18.0"
  sha256 "14de57eb7339b23c94582739be98b8503961bcd02a0fea52beedeb19a4ff806c"

  url "https://github.com/omniviewdev/omniview/releases/download/v#{version}/Omniview_#{version}_darwin_universal.dmg"
  name "Omniview"
  desc "Open-source, pluggable IDE for Kubernetes and DevOps"
  homepage "https://github.com/omniviewdev/omniview"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Omniview.app"
  binary "#{appdir}/Omniview.app/Contents/MacOS/omniview-dev", target: "omniview-dev"

  zap trash: [
    "~/Library/Application Support/com.omniview.omniview",
    "~/Library/Caches/com.omniview.omniview",
    "~/Library/Preferences/com.omniview.omniview.plist",
    "~/.omniview",
  ]
end
