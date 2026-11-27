cask "font-automata-mono" do
  version "16db0f5d33509c60f3f41531fabd11855ac062cc"
  sha256 :no_check

  url "https://github.com/nanxstats/automata-mono/archive/16db0f5d33509c60f3f41531fabd11855ac062cc.tar.gz"
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
