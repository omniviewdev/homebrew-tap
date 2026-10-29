cask "omniview" do
  version "0.9.1"
  sha256 "f4ec0120df27d9345c97ed4ca09f3b6fcdd4929f9694d1680cc662052cd01338"

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
