cask "font-mona-sans-mono-minimal" do
  version "2.0.27"
  sha256 "bd3ecf27b9ad8e1fad2faefc47b0ab4cdb7db680e55af26a7874140680d59ae1"

  url "https://github.com/github/mona-sans/archive/refs/tags/v#{version}.tar.gz"
  name "Mona Sans Mono Minimal"
  desc "Minimal set of Mona Sans Mono typeface weights"
  homepage "https://github.com/mona-sans"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "font-mona-sans"

  font "mona-sans-#{version}/fonts/static/otf/MonaSansMono-Bold.otf"
  font "mona-sans-#{version}/fonts/static/otf/MonaSansMono-Regular.otf"

  # No zap stanza required
end
