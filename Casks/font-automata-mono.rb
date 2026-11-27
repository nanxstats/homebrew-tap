cask "font-automata-mono" do
  version "fd37e63e1a24856c883d5c97fad8ef50d1e37b55"
  sha256 :no_check

  url "https://github.com/nanxstats/automata-mono/archive/fd37e63e1a24856c883d5c97fad8ef50d1e37b55.tar.gz"
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
