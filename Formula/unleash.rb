class Unleash < Formula
  desc "Single-script MDM bypass and suppression for macOS (fork with fixes)"
  homepage "https://github.com/rodion-gudz/unleash"
  url "https://github.com/rodion-gudz/unleash/releases/download/v2.2.5/unleash-standalone.sh"
  sha256 "6a25aaa6957d24886e32e46856f182b91be36e9d39dd8d8cdb60d6264349a9ee"
  license "MIT"

  def install
    bin.install "unleash-standalone.sh" => "unleash"
  end

  test do
    assert_match "unleash v", shell_output("#{bin}/unleash version")
  end
end
