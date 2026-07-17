cask "font-twilio-sans-mono-minimal" do
  version :latest
  sha256 :no_check

  url "https://github.com/twilio/twilio-sans-mono/raw/main/Twilio-Sans-Mono.zip"
  name "Twilio Sans Mono Minimal"
  desc "Minimal set of Twilio Sans Mono typeface weights"
  homepage "https://github.com/twilio/twilio-sans-mono"

  font "Twilio-Sans-Mono/OTF/TwilioSansMono-Bold.otf"
  font "Twilio-Sans-Mono/OTF/TwilioSansMono-BoldItl.otf"
  font "Twilio-Sans-Mono/OTF/TwilioSansMono-Retina.otf"
  font "Twilio-Sans-Mono/OTF/TwilioSansMono-RetinaItl.otf"

  # No zap stanza required
end
