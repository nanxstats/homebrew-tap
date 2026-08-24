cask "font-iosevka-term-minimal" do
  version "34.8.1"
  sha256 "c9929ef8c27e5469906468e378e11d3023690ae9cd411a4af3de78190b901075"

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
