cask "font-dm-mono-ligaturized" do
  version "0.1.0"
  sha256 "e37964ab8513fa9aac227118f6b3fab4b3b024ef1a34873b82419b21757948d2"

  url "https://github.com/nanxstats/dm-mono-ligaturized/archive/refs/tags/v#{version}.tar.gz"
  name "DM Mono Ligaturized"
  desc "DM Mono with Fira Code ligatures"
  homepage "https://github.com/nanxstats/dm-mono-ligaturized"

  font "fonts/LigaDMMono-Italic.ttf"
  font "fonts/LigaDMMono-Light.ttf"
  font "fonts/LigaDMMono-LightItalic.ttf"
  font "fonts/LigaDMMono-Medium.ttf"
  font "fonts/LigaDMMono-MediumItalic.ttf"
  font "fonts/LigaDMMono-Regular.ttf"

  # No zap stanza required
end
