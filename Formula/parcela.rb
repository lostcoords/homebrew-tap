class Parcela < Formula
  desc "Run every checkout of a project at its own local HTTPS URL"
  homepage "https://parcela.run/docs/"
  license "AGPL-3.0-only"

  depends_on "caddy"

  on_macos do
    on_arm do
      url "https://github.com/lostcoords/parcela/releases/download/v0.7.0/parcela-aarch64-apple-darwin.tar.gz"
      sha256 "75c268cc79add54cb38822f58b69ebbe6813f59a049dc946e3ac4644c9b4f105"
    end
    on_intel do
      url "https://github.com/lostcoords/parcela/releases/download/v0.7.0/parcela-x86_64-apple-darwin.tar.gz"
      sha256 "6ee56f73b3786c44de4869a2645cc62a82bd4c7edb375ee846e81ee3a9ef88b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lostcoords/parcela/releases/download/v0.7.0/parcela-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c4be96febcaa65beba4aaa632b9985d178e91745a23b5db3f7e7048b3f97cab8"
    end
    on_intel do
      url "https://github.com/lostcoords/parcela/releases/download/v0.7.0/parcela-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ff0e3a7649b1202235ebb7ad71e6a343096e78c84fd82ddd7b0a04b51d4667a7"
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
