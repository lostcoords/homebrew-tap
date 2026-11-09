class Parcela < Formula
  desc "Run every checkout of a project at its own local HTTPS URL"
  homepage "https://parcela.run/docs/"
  license "AGPL-3.0-only"

  depends_on "caddy"

  on_macos do
    on_arm do
      url "https://github.com/lostcoords/parcela/releases/download/v0.9.0/parcela-aarch64-apple-darwin.tar.gz"
      sha256 "648a59240242dac6610f3aed4f81854e5a6b37f0f8806102e9e494ff24bb78bb"
    end
    on_intel do
      url "https://github.com/lostcoords/parcela/releases/download/v0.9.0/parcela-x86_64-apple-darwin.tar.gz"
      sha256 "4863e50c11cec70c8957bf52f60b98cf5684412c1b7ed5deb2290a102342f796"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lostcoords/parcela/releases/download/v0.9.0/parcela-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "be5639a09030864b5e0110e5b6ee8e565ba4130d1efb691d62f1f806ceede62e"
    end
    on_intel do
      url "https://github.com/lostcoords/parcela/releases/download/v0.9.0/parcela-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e3af38ec770a8b43d6c16f04698e6f5c0eb85541651260d50d424c740bf8e549"
    end
  end

  def install
    bin.install "parcela"
    doc.install "LICENSE", "COPYRIGHT", "THIRD_PARTY_NOTICES.txt"
  end

  test do
    assert_match "parcela #{version}", shell_output("#{bin}/parcela --version")
  end
end
