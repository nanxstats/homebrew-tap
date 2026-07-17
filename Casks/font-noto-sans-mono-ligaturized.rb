cask "font-noto-sans-mono-ligaturized" do
  version "4d6a4e046cea557926eb0ae4ee6565ecdb32211c"
  sha256 :no_check

  # A commit archive is intentional: upstream has no tagged releases.
  url "https://github.com/nanxstats/noto-sans-mono-ligaturized/archive/4d6a4e046cea557926eb0ae4ee6565ecdb32211c.tar.gz"
  name "Noto Sans Mono Ligaturized"
  desc "Noto Sans Mono with Fira Code ligatures"
  homepage "https://github.com/nanxstats/noto-sans-mono-ligaturized"

  font "noto-sans-mono-ligaturized-#{version}/fonts/LigaNotoSansMono-Bold.otf"
  font "noto-sans-mono-ligaturized-#{version}/fonts/LigaNotoSansMono-Light.otf"
  font "noto-sans-mono-ligaturized-#{version}/fonts/LigaNotoSansMono-Medium.otf"
  font "noto-sans-mono-ligaturized-#{version}/fonts/LigaNotoSansMono-Regular.otf"

  # No zap stanza required
end
