class Parcela < Formula
  desc "Run every checkout of a project at its own local HTTPS URL"
  homepage "https://parcela.run/docs/"
  license "AGPL-3.0-only"

  depends_on "caddy"

  on_macos do
    on_arm do
      url "https://github.com/lostcoords/parcela/releases/download/v0.10.0/parcela-aarch64-apple-darwin.tar.gz"
      sha256 "191849fa42d2c96b055865596ddfa758e1cc210b6758207990b3d59bf19fc49a"
    end
    on_intel do
      url "https://github.com/lostcoords/parcela/releases/download/v0.10.0/parcela-x86_64-apple-darwin.tar.gz"
      sha256 "1b93105f71cc6384bfa2e48cb27f5fc4ac63fb450bd0d48bf75e0b144622badf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lostcoords/parcela/releases/download/v0.10.0/parcela-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6f48e0abe05ec4d4dfe3c68478eeeddd7dd51bee370eda5d04e116d90fa4f55b"
    end
    on_intel do
      url "https://github.com/lostcoords/parcela/releases/download/v0.10.0/parcela-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5aaa4964081275bb8f3956cfec212e2a86e5294c05b8a98f51e292b14db1812e"
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
