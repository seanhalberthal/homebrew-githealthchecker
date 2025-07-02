class Githealthchecker < Formula
  desc "Comprehensive CLI tool to analyze Git repositories for security, performance, and quality issues"
  homepage "https://github.com/seanhalberthal/githealthchecker"
  url "https://github.com/seanhalberthal/githealthchecker/releases/download/v1.0.4/githealthchecker-v1.0.4-darwin-amd64.tar.gz"
  version "1.0.4"
  sha256 "60706d0016e007675432478dedaa58d36917e81ebce6c6cfb29fd39beda33db3"
  license "MIT"

  on_linux do
    url "https://github.com/seanhalberthal/githealthchecker/releases/download/v1.0.4/githealthchecker-v1.0.4-linux-amd64.tar.gz"
    sha256 "1c6a4ee0fbf27e49401819dd1df885c99b44073e3c39941e061606e07cd1ab49"
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
