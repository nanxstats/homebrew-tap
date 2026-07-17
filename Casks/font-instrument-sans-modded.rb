cask "font-instrument-sans-modded" do
  version "81aa56db7b6a006def2d27cdb092157a0a8b698e"
  sha256 :no_check

  # A commit archive is intentional: upstream has no tagged releases.
  url "https://github.com/nanxstats/instrument-sans-mod/archive/81aa56db7b6a006def2d27cdb092157a0a8b698e.tar.gz"
  name "Instrument Sans Modded"
  desc "Instrument Sans with modified uppercase R and lowercase t glyphs"
  homepage "https://github.com/nanxstats/instrument-sans-mod"

  font "instrument-sans-mod-#{version}/fonts/variable/InstrumentSans-Italic[wdth,wght].ttf"
  font "instrument-sans-mod-#{version}/fonts/variable/InstrumentSans[wdth,wght].ttf"

  # No zap stanza required
end
