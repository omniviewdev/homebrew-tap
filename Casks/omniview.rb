cask "omniview" do
  version "0.22.0"
  sha256 "74d957614a1e41a07aa337b9aacc74cfd3bdb06f77fc2cb3d75a726f606f3505"

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
