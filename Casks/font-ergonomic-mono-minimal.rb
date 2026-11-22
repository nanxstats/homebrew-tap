cask "font-ergonomic-mono-minimal" do
  version "e4d5e53659c5329ce7afc56e48ad9f1410a7aa1e"
  sha256 :no_check

  url "https://github.com/nanxstats/ergonomic-mono/archive/e4d5e53659c5329ce7afc56e48ad9f1410a7aa1e.tar.gz"
  name "Ergonomic Mono Minimal"
  desc "Retina and Bold weights of Ergonomic Mono with matching italics"
  homepage "https://github.com/nanxstats/ergonomic-mono"

  conflicts_with cask: "font-ergonomic-mono"

  font "ergonomic-mono-#{version}/fonts/ErgonomicMono-Bold.otf"
  font "ergonomic-mono-#{version}/fonts/ErgonomicMono-BoldItalic.otf"
  font "ergonomic-mono-#{version}/fonts/ErgonomicMono-Retina.otf"
  font "ergonomic-mono-#{version}/fonts/ErgonomicMono-RetinaItalic.otf"

  zap :not_required
end
