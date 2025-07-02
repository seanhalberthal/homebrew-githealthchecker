class Githealthchecker < Formula
  desc "Comprehensive CLI tool to analyze Git repositories for security, performance, and quality issues"
  homepage "https://github.com/seanhalberthal/githealthchecker"
  url "https://github.com/seanhalberthal/githealthchecker/releases/download/v1.1.2/githealthchecker-v1.1.2-darwin-amd64.tar.gz"
  version "1.1.2"
  sha256 "b8eaa3a77522e708afcd338a895bd352f1a13aa9855948102ce44743e67e27a4"
  license "MIT"

  on_linux do
    url "https://github.com/seanhalberthal/githealthchecker/releases/download/v1.1.2/githealthchecker-v1.1.2-linux-amd64.tar.gz"
    sha256 "806243a80fd378ea40daee0cd1b3873cbdd483b8c728521cae2ab44d2166e3c3"
  end

  def install
    bin.install "githealthchecker"
  end

  test do
    system "#{bin}/githealthchecker", "--help"
    output = shell_output("#{bin}/githealthchecker version")
    assert_match version.to_s, output
  end
end
