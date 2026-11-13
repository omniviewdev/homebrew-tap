cask "omniview-nightly" do
  version "0.0.0-nightly.20261113.130.1"
  sha256 "7ccc9a1fa273bb99b7af5120474a091b40e045faa1107954f64cf91e5d6d0424"

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
