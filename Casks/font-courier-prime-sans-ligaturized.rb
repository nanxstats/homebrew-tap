cask "font-courier-prime-sans-ligaturized" do
  version "c90c4f8a4fa8677e56bdc944f3fabd9abff47fa1"
  sha256 :no_check

  # A commit archive is intentional: upstream has no tagged releases.
  url "https://github.com/nanxstats/courier-prime-sans-ligaturized/archive/c90c4f8a4fa8677e56bdc944f3fabd9abff47fa1.tar.gz"
  name "Courier Prime Sans Ligaturized"
  desc "Courier Prime Sans with coding glyphs and Fira Code ligatures"
  homepage "https://github.com/nanxstats/courier-prime-sans-ligaturized"

  font "courier-prime-sans-ligaturized-#{version}/fonts/LigaCourierPrimeSans-Bold.otf"
  font "courier-prime-sans-ligaturized-#{version}/fonts/LigaCourierPrimeSans-BoldItalic.otf"
  font "courier-prime-sans-ligaturized-#{version}/fonts/LigaCourierPrimeSans-Italic.otf"
  font "courier-prime-sans-ligaturized-#{version}/fonts/LigaCourierPrimeSans-Regular.otf"

  # No zap stanza required
end
