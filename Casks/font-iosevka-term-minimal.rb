cask "font-iosevka-term-minimal" do
  version "34.9.0"
  sha256 "1c0b8ac68ca210cc253c1833619d37ed2227d96fbdda0a36231375828b7bd6fb"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/PkgTTF-IosevkaTerm-#{version}.zip"
  name "Iosevka Term Minimal"
  desc "Minimal set of Iosevka Term typeface weights"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaTerm-Bold.ttf"
  font "IosevkaTerm-BoldItalic.ttf"
  font "IosevkaTerm-Italic.ttf"
  font "IosevkaTerm-Regular.ttf"

  # No zap stanza required
end
