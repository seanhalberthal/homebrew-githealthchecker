class Githealthchecker < Formula
  desc "Comprehensive CLI tool to analyze Git repositories for security, performance, and quality issues"
  homepage "https://github.com/seanhalberthal/githealthchecker"
  url "https://github.com/seanhalberthal/githealthchecker/releases/download/v1.1.0/githealthchecker-v1.1.0-darwin-amd64.tar.gz"
  version "1.1.0"
  sha256 "655a776fd5fe28e0d2d8e93f10f2703888255a5b4aeef15c4755930791c1c66b"
  license "MIT"

  on_linux do
    url "https://github.com/seanhalberthal/githealthchecker/releases/download/v1.1.0/githealthchecker-v1.1.0-linux-amd64.tar.gz"
    sha256 "b05779e004343c68233274be47b0e63639fd93c65d39003589901d2d91e5b814"
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
