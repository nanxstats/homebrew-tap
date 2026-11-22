cask "font-ergonomic-mono" do
  version "aed802d0947c63eed570bf6433b770b2595dcbd2"
  sha256 :no_check

  url "https://github.com/nanxstats/ergonomic-mono/archive/aed802d0947c63eed570bf6433b770b2595dcbd2.tar.gz"
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
  font "ergonomic-mono-#{version}/fonts/ErgonomicMono-Retina.otf"
  font "ergonomic-mono-#{version}/fonts/ErgonomicMono-RetinaItalic.otf"

  zap :not_required
end
