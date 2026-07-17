cask "font-iosevka-term-minimal" do
  version "34.7.0"
  sha256 "cb75046a641a2a2fb27fc556b44183b4745792ab0f0a9dc450864f7983764321"

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
