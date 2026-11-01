class Wariwari < Formula
  desc "Split group expenses with WariWari from the command line and coding agents"
  homepage "https://github.com/lostcoords/wariwari-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lostcoords/wariwari-cli/releases/download/v0.2.0/wariwari_0.2.0_darwin_arm64.tar.gz"
      sha256 "4a35d6b93405727177732aa0829d5360e8b55a874c154c40801255acc361dfa0"
    end
    on_intel do
      url "https://github.com/lostcoords/wariwari-cli/releases/download/v0.2.0/wariwari_0.2.0_darwin_amd64.tar.gz"
      sha256 "84c25c68ab6f07be63b766e06af7443c58ebca7fae89e36d958a26d9791a9134"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lostcoords/wariwari-cli/releases/download/v0.2.0/wariwari_0.2.0_linux_arm64.tar.gz"
      sha256 "12775aaf8874b3cb4e039e546a195c5d2228c8929a11b44d390efc33628f4c2c"
    end
    on_intel do
      url "https://github.com/lostcoords/wariwari-cli/releases/download/v0.2.0/wariwari_0.2.0_linux_amd64.tar.gz"
      sha256 "8bf20ab9a9ace6475ef4d3b748f7d5c7fe0f2832caf2031755a8aaafeccd432c"
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
