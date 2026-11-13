class Parcela < Formula
  desc "Run every checkout of a project at its own local HTTPS URL"
  homepage "https://parcela.run/docs/"
  license "AGPL-3.0-only"

  depends_on "caddy"

  on_macos do
    on_arm do
      url "https://github.com/lostcoords/parcela/releases/download/v0.9.3/parcela-aarch64-apple-darwin.tar.gz"
      sha256 "992958acb7b341fea6c2dd349b7501eba5ddf90efd87af2ef9afec947f789d0d"
    end
    on_intel do
      url "https://github.com/lostcoords/parcela/releases/download/v0.9.3/parcela-x86_64-apple-darwin.tar.gz"
      sha256 "d913a9f2feadc33a3603dee2423c9d5dcb54ab475e6d12e790b6face725e6975"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lostcoords/parcela/releases/download/v0.9.3/parcela-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "902f968f09152ad88cef47dbcac328ccd3ec76153b5586aaafea2e6478acfa43"
    end
    on_intel do
      url "https://github.com/lostcoords/parcela/releases/download/v0.9.3/parcela-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ee32cfa258badb89784bb4468e7a972ae171d2ec0543d0a62d9b840038a22750"
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
