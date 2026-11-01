class Wariwari < Formula
  desc "Split group expenses with WariWari from the command line and coding agents"
  homepage "https://github.com/lostcoords/wariwari-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lostcoords/wariwari-cli/releases/download/v0.3.0/wariwari_0.3.0_darwin_arm64.tar.gz"
      sha256 "7712379e5a121acf552116156fd6141ce28f9725f940aad07f4db0c41efdff24"
    end
    on_intel do
      url "https://github.com/lostcoords/wariwari-cli/releases/download/v0.3.0/wariwari_0.3.0_darwin_amd64.tar.gz"
      sha256 "7fd824a16d27616077428ee6c3fcfd606f1a6d47eeb6dc3de842561083b43967"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lostcoords/wariwari-cli/releases/download/v0.3.0/wariwari_0.3.0_linux_arm64.tar.gz"
      sha256 "808fec383e29e6a8cc4b53cdeca57289abc125815fe4f1fd500fa6d8323cd518"
    end
    on_intel do
      url "https://github.com/lostcoords/wariwari-cli/releases/download/v0.3.0/wariwari_0.3.0_linux_amd64.tar.gz"
      sha256 "5c1017ab9854688263099205c8ad29b51a13ec39057b5d73db53bc6335703f24"
    end
  end

  def install
    bin.install "wariwari"
    doc.install "MIT-LICENSE", "README.md"
  end

  test do
    assert_match "wariwari #{version}", shell_output("#{bin}/wariwari --version")
  end
end
