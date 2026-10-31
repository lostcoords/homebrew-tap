class Wariwari < Formula
  desc "Split group expenses with WariWari from the command line and coding agents"
  homepage "https://github.com/lostcoords/wariwari-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lostcoords/wariwari-cli/releases/download/v0.1.0/wariwari_0.1.0_darwin_arm64.tar.gz"
      sha256 "92b222bc985419e79932857730eedea9952a81a6b8a176e28ec625f268129a19"
    end
    on_intel do
      url "https://github.com/lostcoords/wariwari-cli/releases/download/v0.1.0/wariwari_0.1.0_darwin_amd64.tar.gz"
      sha256 "269c72168377b7bd2b46d5863673e7e10fce708c39ea59c44e3cea1c94bcbec3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lostcoords/wariwari-cli/releases/download/v0.1.0/wariwari_0.1.0_linux_arm64.tar.gz"
      sha256 "014dfa5e62c0626c9af8a734ecb45098218875d7ca001cf499e6974bd410f3d6"
    end
    on_intel do
      url "https://github.com/lostcoords/wariwari-cli/releases/download/v0.1.0/wariwari_0.1.0_linux_amd64.tar.gz"
      sha256 "766ae8bd42a923e0775970656db6536d3b6ae2d8d42b598b080e3384afe82bad"
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
