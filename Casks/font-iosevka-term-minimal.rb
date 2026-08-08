cask "font-iosevka-term-minimal" do
  version "34.8.0"
  sha256 "bb58292f7f7172d272fb8d4475237469e4e047d5cdebb795ecc80db8b54e615e"

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
