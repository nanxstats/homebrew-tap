cask "font-anthrosevka-mono" do
  version "0.3.1"
  sha256 "a0351953018edb72a23270228dfa27edc8207da049e985a86ca8110410cc7a09"

  url "https://github.com/nanxstats/anthrosevka/releases/download/v#{version}/AnthrosevkaMono.zip"
  name "Anthrosevka Mono"
  desc "Iosevka custom build inspired by Anthropic Mono"
  homepage "https://nanx.me/anthrosevka/"

  font "AnthrosevkaMono-Bold.ttf"
  font "AnthrosevkaMono-BoldItalic.ttf"
  font "AnthrosevkaMono-Italic.ttf"
  font "AnthrosevkaMono-Regular.ttf"

  # No zap stanza required
end
