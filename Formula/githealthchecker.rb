class Githealthchecker < Formula
  desc "Comprehensive CLI tool to analyze Git repositories for security, performance, and quality issues"
  homepage "https://github.com/seanhalberthal/githealthchecker"
  url "https://github.com/seanhalberthal/githealthchecker/releases/download/v1.0.1/githealthchecker-v1.0.1-darwin-amd64.tar.gz"
  version "1.0.1"
  sha256 "c3fa4e652101023c68d2b2ead39c68a0467f6a04237347a4d6e8d683a858440f"
  license "MIT"

  on_linux do
    url "https://github.com/seanhalberthal/githealthchecker/releases/download/v1.0.1/githealthchecker-v1.0.1-linux-amd64.tar.gz"
    sha256 "c42617146aea182a443d2afac8662cbce5ae93f9f227d177e7258fa0de652c0b"
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
