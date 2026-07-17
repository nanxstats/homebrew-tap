cask "font-anthrosevka-mono" do
  version "0.3.0"
  sha256 "0ec9529e1bfc5b7be3d9191eb47cf44383aa3ac08dc51d01b3a2ade4a413ebd5"

  url "https://github.com/nanxstats/anthrosevka/releases/download/v#{version}/AnthrosevkaMono.zip",
      verified: "github.com/nanxstats/anthrosevka/"
  name "Anthrosevka Mono"
  desc "Iosevka custom build inspired by Anthropic Mono"
  homepage "https://nanx.me/anthrosevka/"

  font "AnthrosevkaMono-Bold.ttf"
  font "AnthrosevkaMono-BoldItalic.ttf"
  font "AnthrosevkaMono-Italic.ttf"
  font "AnthrosevkaMono-Regular.ttf"

  # No zap stanza required
end
