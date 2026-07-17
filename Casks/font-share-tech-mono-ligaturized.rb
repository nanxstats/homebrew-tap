cask "font-share-tech-mono-ligaturized" do
  version "bbb79888b5ce15c2b3475299c41490393062edb3"
  sha256 :no_check

  # A commit archive is intentional: upstream has no tagged releases.
  url "https://github.com/nanxstats/share-tech-mono-ligaturized/archive/bbb79888b5ce15c2b3475299c41490393062edb3.tar.gz"
  name "Share Tech Mono Ligaturized"
  desc "Share Tech Mono with Fira Code ligatures"
  homepage "https://github.com/nanxstats/share-tech-mono-ligaturized"

  font "fonts/LigaShareTechMono-Regular.ttf"

  # No zap stanza required
end
