cask "font-automata-mono" do
  version "93a429a5de1ceeb81b639343c6e59368316bacef"
  sha256 :no_check

  url "https://github.com/nanxstats/automata-mono/archive/93a429a5de1ceeb81b639343c6e59368316bacef.tar.gz"
  name "Automata Mono"
  desc "Roboto Mono with customized glyphs and programming ligatures"
  homepage "https://github.com/nanxstats/automata-mono"

  font "automata-mono-#{version}/fonts/AutomataMono-Bold.ttf"
  font "automata-mono-#{version}/fonts/AutomataMono-BoldItalic.ttf"
  font "automata-mono-#{version}/fonts/AutomataMono-Italic.ttf"
  font "automata-mono-#{version}/fonts/AutomataMono-Light.ttf"
  font "automata-mono-#{version}/fonts/AutomataMono-LightItalic.ttf"
  font "automata-mono-#{version}/fonts/AutomataMono-Medium.ttf"
  font "automata-mono-#{version}/fonts/AutomataMono-MediumItalic.ttf"
  font "automata-mono-#{version}/fonts/AutomataMono-Regular.ttf"
  font "automata-mono-#{version}/fonts/AutomataMono-Thin.ttf"
  font "automata-mono-#{version}/fonts/AutomataMono-ThinItalic.ttf"

  zap :not_required
end
