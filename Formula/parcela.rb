class Parcela < Formula
  desc "Run every checkout of a project at its own local HTTPS URL"
  homepage "https://parcela.run/docs/"
  license "AGPL-3.0-only"

  depends_on "caddy"

  on_macos do
    on_arm do
      url "https://github.com/lostcoords/parcela/releases/download/v0.8.0/parcela-aarch64-apple-darwin.tar.gz"
      sha256 "6c892feffe73615b15cc43c2b88bc79e23148ed9b8325f7c0ecae5cf84b7d070"
    end
    on_intel do
      url "https://github.com/lostcoords/parcela/releases/download/v0.8.0/parcela-x86_64-apple-darwin.tar.gz"
      sha256 "f486dc86df1602429f9f73b47a4ff331a7442dbc3c71347d809e056a17cfce08"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lostcoords/parcela/releases/download/v0.8.0/parcela-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "74d043010b3270c6a3a629eb8350b0899e64b22cd1d3eea61109dfea249c1dc2"
    end
    on_intel do
      url "https://github.com/lostcoords/parcela/releases/download/v0.8.0/parcela-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4d2c6df15c849d3faeb945ec669448e6b6fb6e80b85de2865d66c5a1831dc53f"
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
