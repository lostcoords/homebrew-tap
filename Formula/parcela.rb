class Parcela < Formula
  desc "Run every checkout of a project at its own local HTTPS URL"
  homepage "https://parcela.run/docs/"
  license "AGPL-3.0-only"

  depends_on "caddy"

  on_macos do
    on_arm do
      url "https://github.com/lostcoords/parcela/releases/download/v0.10.1/parcela-aarch64-apple-darwin.tar.gz"
      sha256 "11052ad36ea57114aee4780d545b953daca5315879e1941d4be8a6b5be9e9564"
    end
    on_intel do
      url "https://github.com/lostcoords/parcela/releases/download/v0.10.1/parcela-x86_64-apple-darwin.tar.gz"
      sha256 "7984e18700a2f59d2751a00c953c770fc1255c6310e810700d8a50befd7a4743"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lostcoords/parcela/releases/download/v0.10.1/parcela-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2037421101d789f8d1de68bbe58cd26461eb3ce2e6c37d2e02884e6762112a93"
    end
    on_intel do
      url "https://github.com/lostcoords/parcela/releases/download/v0.10.1/parcela-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fee549814228f0f4fd5e381ac30d017da03441128ac052f5f3855e082a3369ef"
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
