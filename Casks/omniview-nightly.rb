cask "omniview-nightly" do
  version "0.0.0-nightly.20261102"
  sha256 "05f42fa5e52b04bcc126b12459d7d25e76facf0e8c51086913d7c8b6ae85cf08"

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
