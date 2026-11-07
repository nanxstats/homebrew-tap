cask "font-ergonomic-mono" do
  version "85ff4e2d19a33a437d20e4fd1c2d14720f902082"
  sha256 :no_check

  url "https://github.com/nanxstats/ergonomic-mono/archive/85ff4e2d19a33a437d20e4fd1c2d14720f902082.tar.gz"
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

  zap :not_required
end
