class Unleash < Formula
  desc "Single-script MDM bypass and suppression for macOS (fork with fixes)"
  homepage "https://github.com/rodion-gudz/unleash"
  url "https://github.com/rodion-gudz/unleash/releases/download/v2.2.3/unleash-standalone.sh"
  sha256 "3932edbc4f448b72203d0a8eaf82e1173c7759f7f276dc707a41437d6ab939b9"
  license "MIT"

  def install
    bin.install "unleash-standalone.sh" => "unleash"
  end

  test do
    assert_match "unleash v", shell_output("#{bin}/unleash version")
  end
end
