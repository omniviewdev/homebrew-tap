cask "omniview-nightly" do
  version "0.0.0-nightly.20261028"
  sha256 "6a301874f95e0f95d759140bbbc700d5d1b894fbbe1b9a9ffb3f52549ebe9260"

  url "https://github.com/omniviewdev/omniview/releases/download/nightly/Omniview_#{version}_darwin_universal.dmg"
  name "Omniview Nightly"
  desc "Open-source, pluggable IDE for Kubernetes and DevOps (nightly build)"
  homepage "https://github.com/omniviewdev/omniview"

  livecheck do
    url "https://github.com/omniviewdev/omniview/releases/tag/nightly"
    regex(/Omniview[._-]v?(\d+(?:\.\d+)*-nightly\.\d+)[._-]darwin/i)
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
