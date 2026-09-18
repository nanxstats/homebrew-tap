cask "font-twilio-sans-mono-minimal" do
  version "6bb29c96842f19a533401e6266fdfdd813dcf3e4"
  sha256 :no_check

  # A commit pin is intentional: upstream has no tagged releases.
  url "https://github.com/twilio/twilio-sans-mono/raw/6bb29c96842f19a533401e6266fdfdd813dcf3e4/Twilio-Sans-Mono.zip"
  name "Twilio Sans Mono Minimal"
  desc "Minimal set of Twilio Sans Mono typeface weights"
  homepage "https://github.com/twilio/twilio-sans-mono"

  font "Twilio-Sans-Mono/OTF/TwilioSansMono-Bold.otf"
  font "Twilio-Sans-Mono/OTF/TwilioSansMono-BoldItl.otf"
  font "Twilio-Sans-Mono/OTF/TwilioSansMono-Retina.otf"
  font "Twilio-Sans-Mono/OTF/TwilioSansMono-RetinaItl.otf"

  # No zap stanza required
end
