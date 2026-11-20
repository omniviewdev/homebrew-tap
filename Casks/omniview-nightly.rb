cask "omniview-nightly" do
  version "0.0.0-nightly.20261120.144.1"
  sha256 "954920b9bf43317c55d4a9beff16f174f076f8f4ee63ab3de912b879d2a6dab7"

  url "https://github.com/omniviewdev/omniview/releases/download/nightly/Omniview_#{version}_darwin_universal.dmg"
  name "Omniview Nightly"
  desc "Open-source, pluggable IDE for Kubernetes and DevOps (nightly build)"
  homepage "https://github.com/omniviewdev/omniview"

  livecheck do
    url "https://github.com/omniviewdev/omniview/releases/tag/nightly"
    regex(/Omniview[._-]v?(\d+(?:\.\d+)*-nightly(?:\.\d+)+)[._-]darwin/i)
  end

  depends_on macos: :ventura
  app "Omniview.app"
  binary "#{appdir}/Omniview.app/Contents/MacOS/omniview-dev", target: "omniview-dev"

  zap trash: [
    "~/Library/Application Support/com.omniview.omniview",
    "~/Library/Caches/com.omniview.omniview",
    "~/Library/Preferences/com.omniview.omniview.plist",
    "~/.omniview",
  ]
end
