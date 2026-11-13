class Parcela < Formula
  desc "Run every checkout of a project at its own local HTTPS URL"
  homepage "https://parcela.run/docs/"
  license "AGPL-3.0-only"

  depends_on "caddy"

  on_macos do
    on_arm do
      url "https://github.com/lostcoords/parcela/releases/download/v0.9.1/parcela-aarch64-apple-darwin.tar.gz"
      sha256 "09ccc480b4371cff16ec607817191d1f1410578c107ea53a98ad3c66cf978f02"
    end
    on_intel do
      url "https://github.com/lostcoords/parcela/releases/download/v0.9.1/parcela-x86_64-apple-darwin.tar.gz"
      sha256 "477db4f5305e638a02a40b25725eb0d01637f6f64f0f4177c64b898672ed5b54"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lostcoords/parcela/releases/download/v0.9.1/parcela-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a1dcaf6ddbdc3d0b923e35b0daaa4a2a9e36caa742c702d01adf6abfe05ba4fe"
    end
    on_intel do
      url "https://github.com/lostcoords/parcela/releases/download/v0.9.1/parcela-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f5669f5f09ef84c4c78590499df8ef1176138a2eeab6a058ba2bbe7cbf6a2969"
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
