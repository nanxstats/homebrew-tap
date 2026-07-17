cask "font-fira-mono-ligaturized" do
  version "e4a94f5d25e265ec7dbd22f5d71a539775a70cd9"
  sha256 :no_check

  # A commit archive is intentional: upstream has no tagged releases.
  url "https://github.com/nanxstats/fira-mono-ligaturized/archive/e4a94f5d25e265ec7dbd22f5d71a539775a70cd9.tar.gz"
  name "Fira Mono Ligaturized"
  desc "Fira Mono with opinionated Fira Code ligatures and stylistic sets"
  homepage "https://github.com/nanxstats/fira-mono-ligaturized"

  font "fonts/LigaFiraMono-Bold.otf"
  font "fonts/LigaFiraMono-Medium.otf"
  font "fonts/LigaFiraMono-Regular.otf"

  # No zap stanza required
end
