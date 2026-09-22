class Unleash < Formula
  desc "Single-script MDM bypass and suppression for macOS (fork with fixes)"
  homepage "https://github.com/rodion-gudz/unleash"
  url "https://github.com/rodion-gudz/unleash/releases/download/v2.2.4/unleash-standalone.sh"
  sha256 "4cc13751059dd37c0158c05d0140ebb69ac502b77e0e70706b968fc0d00f4f1d"
  license "MIT"

  def install
    bin.install "unleash-standalone.sh" => "unleash"
  end

  test do
    assert_match "unleash v", shell_output("#{bin}/unleash version")
  end
end
