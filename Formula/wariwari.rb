class Wariwari < Formula
  desc "Split group expenses with WariWari from the command line and coding agents"
  homepage "https://github.com/lostcoords/wariwari-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lostcoords/wariwari-cli/releases/download/v0.4.0/wariwari_0.4.0_darwin_arm64.tar.gz"
      sha256 "6240fb91b9c91fff1dec960323047e033d8ea9cef8643d5282b3815a9ee8c1bc"
    end
    on_intel do
      url "https://github.com/lostcoords/wariwari-cli/releases/download/v0.4.0/wariwari_0.4.0_darwin_amd64.tar.gz"
      sha256 "57c6c4d0f7dc3e2b8bdefa6f3fc7ca4b292d48e6791af1f1316b75dddf0dcadd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lostcoords/wariwari-cli/releases/download/v0.4.0/wariwari_0.4.0_linux_arm64.tar.gz"
      sha256 "3a6d104c8b6d2c17fce755f534a838f5a8aed19af6478a9ae448be30bd1dab06"
    end
    on_intel do
      url "https://github.com/lostcoords/wariwari-cli/releases/download/v0.4.0/wariwari_0.4.0_linux_amd64.tar.gz"
      sha256 "158bfbe45ccc933f5fc7eff37543b084546784b96fb18485b0d6b35fb58d1476"
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
