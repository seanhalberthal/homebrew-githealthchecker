class Githealthchecker < Formula
  desc "Comprehensive CLI tool to analyze Git repositories for security, performance, and quality issues"
  homepage "https://github.com/seanhalberthal/githealthchecker"
  url "https://github.com/seanhalberthal/githealthchecker/releases/download/v1.0.5/githealthchecker-v1.0.5-darwin-amd64.tar.gz"
  version "1.0.5"
  sha256 "2f4d67e88158d67aba01d63f83f0066f397e6a48122c1e1339617298a9f5bf2c"
  license "MIT"

  on_linux do
    url "https://github.com/seanhalberthal/githealthchecker/releases/download/v1.0.5/githealthchecker-v1.0.5-linux-amd64.tar.gz"
    sha256 "4eb4ee1c7f08ccb40dee7091c6b96a4361e37739afd31d67a52e967cd936cf2f"
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
