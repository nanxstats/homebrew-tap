cask "font-ergonomic-mono" do
  version "661e573a821b808c9d257c3c7bd15825fe11ac22"
  sha256 :no_check

  url "https://github.com/nanxstats/ergonomic-mono/archive/661e573a821b808c9d257c3c7bd15825fe11ac22.tar.gz"
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
