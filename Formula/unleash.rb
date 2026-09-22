class Unleash < Formula
  desc "Single-script MDM bypass and suppression for macOS (fork with fixes)"
  homepage "https://github.com/rodion-gudz/unleash"
  url "https://github.com/rodion-gudz/unleash/releases/download/v2.1.0/unleash-standalone.sh"
  sha256 "45b580550d546427f0dbc4075977194b3468e05fc4f79af23caa65cdd165d085"
  license "MIT"

  def install
    bin.install "unleash-standalone.sh" => "unleash"
  end

  test do
    assert_match "unleash v", shell_output("#{bin}/unleash version")
  end
end
