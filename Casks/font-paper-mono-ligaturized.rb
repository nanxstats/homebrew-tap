cask "font-paper-mono-ligaturized" do
  version "efc339370ffb024d3882b36d0f6f778bc1f39794"
  sha256 :no_check

  # A commit archive is intentional: upstream has no tagged releases.
  url "https://github.com/nanxstats/paper-mono-ligaturized/archive/efc339370ffb024d3882b36d0f6f778bc1f39794.tar.gz"
  name "Paper Mono Ligaturized"
  desc "Paper Mono with Fira Code ligatures and a default slashed zero"
  homepage "https://github.com/nanxstats/paper-mono-ligaturized"

  font "paper-mono-ligaturized-#{version}/fonts/LigaPaperMono-Bold.otf"
  font "paper-mono-ligaturized-#{version}/fonts/LigaPaperMono-ExtraBold.otf"
  font "paper-mono-ligaturized-#{version}/fonts/LigaPaperMono-ExtraLight.otf"
  font "paper-mono-ligaturized-#{version}/fonts/LigaPaperMono-Light.otf"
  font "paper-mono-ligaturized-#{version}/fonts/LigaPaperMono-Medium.otf"
  font "paper-mono-ligaturized-#{version}/fonts/LigaPaperMono-Regular.otf"
  font "paper-mono-ligaturized-#{version}/fonts/LigaPaperMono-SemiBold.otf"
  font "paper-mono-ligaturized-#{version}/fonts/LigaPaperMono-Thin.otf"

  # No zap stanza required
end
