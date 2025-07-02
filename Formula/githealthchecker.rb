class Githealthchecker < Formula
  desc "Comprehensive CLI tool to analyze Git repositories for security, performance, and quality issues"
  homepage "https://github.com/seanhalberthal/githealthchecker"
  url "https://github.com/seanhalberthal/githealthchecker/releases/download/v1.0.6/githealthchecker-v1.0.6-darwin-amd64.tar.gz"
  version "1.0.6"
  sha256 "8a49b97af93b4976d15c001229e8f88ff503e1fef87e89e572a43a45f43e0d91"
  license "MIT"

  on_linux do
    url "https://github.com/seanhalberthal/githealthchecker/releases/download/v1.0.6/githealthchecker-v1.0.6-linux-amd64.tar.gz"
    sha256 "420bf4763935ffe0b664c0c63f75d05ffb64d2d91bc6930e573f3cece7482f54"
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
