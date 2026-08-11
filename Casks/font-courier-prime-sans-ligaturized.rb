cask "font-courier-prime-sans-ligaturized" do
  version "46532857d80e8f95f3acbb3d9f483647b941cbe5"
  sha256 :no_check

  # A commit archive is intentional: upstream has no tagged releases.
  url "https://github.com/nanxstats/courier-prime-sans-ligaturized/archive/46532857d80e8f95f3acbb3d9f483647b941cbe5.tar.gz"
  name "Courier Prime Sans Ligaturized"
  desc "Courier Prime Sans with coding glyphs and Fira Code ligatures"
  homepage "https://github.com/nanxstats/courier-prime-sans-ligaturized"

  font "courier-prime-sans-ligaturized-#{version}/fonts/LigaCourierPrimeSans-Bold.otf"
  font "courier-prime-sans-ligaturized-#{version}/fonts/LigaCourierPrimeSans-BoldItalic.otf"
  font "courier-prime-sans-ligaturized-#{version}/fonts/LigaCourierPrimeSans-Italic.otf"
  font "courier-prime-sans-ligaturized-#{version}/fonts/LigaCourierPrimeSans-Regular.otf"

  # No zap stanza required
end
