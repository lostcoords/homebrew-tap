class Parcela < Formula
  desc "Run every checkout of a project at its own local HTTPS URL"
  homepage "https://parcela.run/docs/"
  license "AGPL-3.0-only"

  depends_on "caddy"

  on_macos do
    on_arm do
      url "https://github.com/lostcoords/parcela/releases/download/v0.9.2/parcela-aarch64-apple-darwin.tar.gz"
      sha256 "660b323447240e972d0305c061c964c175a94fd3e5a7adffdfa16b63585cced9"
    end
    on_intel do
      url "https://github.com/lostcoords/parcela/releases/download/v0.9.2/parcela-x86_64-apple-darwin.tar.gz"
      sha256 "9ae007a0c754500ae01e5a07cb067bd8733c860f13858b8fb6ae9065868f8cd1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lostcoords/parcela/releases/download/v0.9.2/parcela-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ab56b95ae3a01df92905d89eab3870a3c5e4109e494f8843d76aaf078654d86a"
    end
    on_intel do
      url "https://github.com/lostcoords/parcela/releases/download/v0.9.2/parcela-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fc1b70ad3b5d73a70f9de3a54e3f1b2a2812be4117f4042a1548d970ee50315e"
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
