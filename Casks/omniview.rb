cask "omniview" do
  version "0.32.1"
  sha256 "69bfc37fcce86ef6b667b955a6044028c8cecd07d1b4a8fb022ea9af84af9bea"

  url "https://github.com/omniviewdev/omniview/releases/download/v#{version}/Omniview_#{version}_darwin_universal.dmg"
  name "Omniview"
  desc "Open-source, pluggable IDE for Kubernetes and DevOps"
  homepage "https://github.com/omniviewdev/omniview"

  livecheck do
    url :url
    strategy :github_latest
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
