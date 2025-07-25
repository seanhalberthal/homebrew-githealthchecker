class Githealthchecker < Formula
  desc "Comprehensive CLI tool to analyze Git repositories for security, performance, and quality issues"
  homepage "https://github.com/seanhalberthal/githealthchecker"
  url "https://github.com/seanhalberthal/githealthchecker/releases/download/v1.1.3/githealthchecker-v1.1.3-darwin-amd64.tar.gz"
  version "1.1.3"
  sha256 "83f9b732bf4a1bddbb3e3ffafbd1309a6018db975deb36e24ac035e2b799fdd9"
  license "MIT"

  on_linux do
    url "https://github.com/seanhalberthal/githealthchecker/releases/download/v1.1.3/githealthchecker-v1.1.3-linux-amd64.tar.gz"
    sha256 "a87d5e936281f356719e49c1992819ae40d98e088eb0d7348c21e73981c94eca"
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
