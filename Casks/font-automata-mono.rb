cask "font-automata-mono" do
  version "f22380d464f14a1f8f1d834c0b7572c43ff9ddc6"
  sha256 :no_check

  url "https://github.com/nanxstats/automata-mono/archive/f22380d464f14a1f8f1d834c0b7572c43ff9ddc6.tar.gz"
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
