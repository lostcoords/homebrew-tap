class Parcela < Formula
  desc "Run every checkout of a project at its own local HTTPS URL"
  homepage "https://parcela.run/docs/"
  license "AGPL-3.0-only"

  depends_on "caddy"

  on_macos do
    on_arm do
      url "https://github.com/lostcoords/parcela/releases/download/v0.6.0/parcela-aarch64-apple-darwin.tar.gz"
      sha256 "0ab4fe544d88862a1e2eea8fb4f162c8afe2bfb0828223125693ae7d3571da5f"
    end
    on_intel do
      url "https://github.com/lostcoords/parcela/releases/download/v0.6.0/parcela-x86_64-apple-darwin.tar.gz"
      sha256 "31365fa60797ca2ec63d08e65d99beffb770921142803542741fb71e1d6a06c3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lostcoords/parcela/releases/download/v0.6.0/parcela-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7be11fea1272197e7ce000b52051d518ea735b2967557937c5b3dcf7599a93a9"
    end
    on_intel do
      url "https://github.com/lostcoords/parcela/releases/download/v0.6.0/parcela-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b4b5fc63aa62822a96b95d2391e8454dcbc084075ced9c8f77ede69bf6592f21"
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
