cask "font-iosevka-term-minimal" do
  version "34.9.1"
  sha256 "3bd57a66a7f1e429a131d3bc35f4d0f3a8eb722f2fe8f59f595e424bda9a33c9"

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

  zap :not_required
end
