class Wariwari < Formula
  desc "Split group expenses with WariWari from the command line and coding agents"
  homepage "https://github.com/lostcoords/wariwari-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lostcoords/wariwari-cli/releases/download/v0.1.1/wariwari_0.1.1_darwin_arm64.tar.gz"
      sha256 "2ad8d334a49bbb01a1b0f83db16e63d9a254929e5530bfd54419a099dc79d37d"
    end
    on_intel do
      url "https://github.com/lostcoords/wariwari-cli/releases/download/v0.1.1/wariwari_0.1.1_darwin_amd64.tar.gz"
      sha256 "0c2ac2980bef758acb4cd347d332a4873a0d325fcde50b55d63a58b307948546"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lostcoords/wariwari-cli/releases/download/v0.1.1/wariwari_0.1.1_linux_arm64.tar.gz"
      sha256 "68effd2ab36e65216f8ea393fe9c28845aad8d902b4f11da45a8729a9bfca66a"
    end
    on_intel do
      url "https://github.com/lostcoords/wariwari-cli/releases/download/v0.1.1/wariwari_0.1.1_linux_amd64.tar.gz"
      sha256 "58b9210db2cc5f63d5224e911cfd93202781af46577960639b5de3b3ee9a02f6"
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
