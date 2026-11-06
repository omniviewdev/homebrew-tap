cask "omniview-nightly" do
  version "0.0.0-nightly.20261106"
  sha256 "959539628f74aaf28110f9e18526406a7a208fd515d920e6cfd7aa815841fcb7"

  url "https://github.com/omniviewdev/omniview/releases/download/nightly/Omniview_#{version}_darwin_universal.dmg"
  name "Omniview Nightly"
  desc "Open-source, pluggable IDE for Kubernetes and DevOps (nightly build)"
  homepage "https://github.com/omniviewdev/omniview"

  livecheck do
    url "https://github.com/omniviewdev/omniview/releases/tag/nightly"
    regex(/Omniview[._-]v?(\d+(?:\.\d+)*-nightly\.\d+)[._-]darwin/i)
  end

  depends_on macos: :monterey
  app "Omniview.app"
  binary "#{appdir}/Omniview.app/Contents/MacOS/omniview-dev", target: "omniview-dev"

  zap trash: [
    "~/Library/Application Support/com.omniview.omniview",
    "~/Library/Caches/com.omniview.omniview",
    "~/Library/Preferences/com.omniview.omniview.plist",
    "~/.omniview",
  ]
end
