cask "font-courier-prime-sans-ligaturized" do
  version "4490f55a87786a2b7c5c8272aba76a2e3719d9ef"
  sha256 :no_check

  # A commit archive is intentional: upstream has no tagged releases.
  url "https://github.com/nanxstats/courier-prime-sans-ligaturized/archive/4490f55a87786a2b7c5c8272aba76a2e3719d9ef.tar.gz"
  name "Courier Prime Sans Ligaturized"
  desc "Courier Prime Sans with coding glyphs and Fira Code ligatures"
  homepage "https://github.com/nanxstats/courier-prime-sans-ligaturized"

  font "courier-prime-sans-ligaturized-#{version}/fonts/LigaCourierPrimeSans-Bold.otf"
  font "courier-prime-sans-ligaturized-#{version}/fonts/LigaCourierPrimeSans-BoldItalic.otf"
  font "courier-prime-sans-ligaturized-#{version}/fonts/LigaCourierPrimeSans-Italic.otf"
  font "courier-prime-sans-ligaturized-#{version}/fonts/LigaCourierPrimeSans-Regular.otf"

  # No zap stanza required
end
