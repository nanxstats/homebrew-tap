cask "font-jetbrains-mono-minimal" do
  version "2.304"
  sha256 "6f6376c6ed2960ea8a963cd7387ec9d76e3f629125bc33d1fdcd7eb7012f7bbf"

  url "https://github.com/JetBrains/JetBrainsMono/releases/download/v#{version}/JetBrainsMono-#{version}.zip",
      verified: "github.com/JetBrains/JetBrainsMono/"
  name "JetBrains Mono Minimal"
  desc "Minimal set of JetBrains Mono typeface weights"
  homepage "https://www.jetbrains.com/lp/mono"

  livecheck do
    url :url
    strategy :gitHub_latest
  end

  font "fonts/ttf/JetBrainsMono-Bold.ttf"
  font "fonts/ttf/JetBrainsMono-BoldItalic.ttf"
  font "fonts/ttf/JetBrainsMono-Italic.ttf"
  font "fonts/ttf/JetBrainsMono-Regular.ttf"

  # No zap stanza required
end
