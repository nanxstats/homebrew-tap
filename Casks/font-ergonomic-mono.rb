cask "font-ergonomic-mono" do
  version "16d6a049ce90e9a1e769f2bc9a610776044f52bb"
  sha256 :no_check

  url "https://github.com/nanxstats/ergonomic-mono/archive/16d6a049ce90e9a1e769f2bc9a610776044f52bb.tar.gz"
  name "Ergonomic Mono"
  desc "Coding font with selectable glyph variants and programming ligatures"
  homepage "https://github.com/nanxstats/ergonomic-mono"

  font "ergonomic-mono-#{version}/fonts/ErgonomicMono-Bold.otf"
  font "ergonomic-mono-#{version}/fonts/ErgonomicMono-BoldItalic.otf"
  font "ergonomic-mono-#{version}/fonts/ErgonomicMono-Light.otf"
  font "ergonomic-mono-#{version}/fonts/ErgonomicMono-LightItalic.otf"
  font "ergonomic-mono-#{version}/fonts/ErgonomicMono-Medium.otf"
  font "ergonomic-mono-#{version}/fonts/ErgonomicMono-MediumItalic.otf"
  font "ergonomic-mono-#{version}/fonts/ErgonomicMono-Regular.otf"
  font "ergonomic-mono-#{version}/fonts/ErgonomicMono-RegularItalic.otf"

  # No zap stanza required
end
