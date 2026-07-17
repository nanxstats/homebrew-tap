cask "font-paper-mono-ligaturized" do
  version "efc339370ffb024d3882b36d0f6f778bc1f39794"
  sha256 :no_check

  # A commit archive is intentional: upstream has no tagged releases.
  url "https://github.com/nanxstats/paper-mono-ligaturized/archive/efc339370ffb024d3882b36d0f6f778bc1f39794.tar.gz"
  name "Paper Mono Ligaturized"
  desc "Paper Mono with Fira Code ligatures and a default slashed zero"
  homepage "https://github.com/nanxstats/paper-mono-ligaturized"

  font "fonts/LigaPaperMono-Bold.otf"
  font "fonts/LigaPaperMono-ExtraBold.otf"
  font "fonts/LigaPaperMono-ExtraLight.otf"
  font "fonts/LigaPaperMono-Light.otf"
  font "fonts/LigaPaperMono-Medium.otf"
  font "fonts/LigaPaperMono-Regular.otf"
  font "fonts/LigaPaperMono-SemiBold.otf"
  font "fonts/LigaPaperMono-Thin.otf"

  # No zap stanza required
end
