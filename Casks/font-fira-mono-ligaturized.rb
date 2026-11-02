cask "font-fira-mono-ligaturized" do
  version "2b89aa5b4940f969891db812f3bfa1ace38b7533"
  sha256 :no_check

  # A commit archive is intentional: upstream has no tagged releases.
  url "https://github.com/nanxstats/fira-mono-ligaturized/archive/2b89aa5b4940f969891db812f3bfa1ace38b7533.tar.gz"
  name "Fira Mono Ligaturized"
  desc "Fira Mono with opinionated Fira Code ligatures and stylistic sets"
  homepage "https://github.com/nanxstats/fira-mono-ligaturized"

  font "fira-mono-ligaturized-#{version}/fonts/LigaFiraMono-Bold.otf"
  font "fira-mono-ligaturized-#{version}/fonts/LigaFiraMono-Medium.otf"
  font "fira-mono-ligaturized-#{version}/fonts/LigaFiraMono-Regular.otf"

  zap :not_required
end
