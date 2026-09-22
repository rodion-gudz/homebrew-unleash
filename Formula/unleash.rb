class Unleash < Formula
  desc "Single-script MDM bypass and suppression for macOS (fork with fixes)"
  homepage "https://github.com/rodion-gudz/unleash"
  url "https://github.com/rodion-gudz/unleash/releases/download/v2.2.1/unleash-standalone.sh"
  sha256 "fbb829d497feb3ef46d0b56bb9a8a387fc45807c1c57dddc26978b4e93ed8d54"
  license "MIT"

  def install
    bin.install "unleash-standalone.sh" => "unleash"
  end

  test do
    assert_match "unleash v", shell_output("#{bin}/unleash version")
  end
end
