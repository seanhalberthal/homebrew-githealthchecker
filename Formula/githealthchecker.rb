  class Githealthchecker < Formula
    desc "Comprehensive CLI tool to analyze Git repositories for security, performance, and quality issues"
    homepage "https://github.com/seanhalberthal/githealthchecker"
    url "https://github.com/seanhalberthal/githealthchecker/releases/download/v1.0.0/git-health-checker-v1.0.0-d
  arwin-amd64.tar.gz"
    version "1.0.0"
    sha256 "a1b2c3d4e5f6g7h8i9j0k1l2m3n4o5p6q7r8s9t0u1v2w3x4y5z6a7b8c9d0e1f2"
    license "MIT"

    on_linux do
      url "https://github.com/seanhalberthal/githealthchecker/releases/download/v1.0.0/git-health-checker-v1.0.0
  -linux-amd64.tar.gz"
      sha256 "f2e1d0c9b8a7z6y5x4w3v2u1t0s9r8q7p6o5n4m3l2k1j0i9h8g7f6e5d4c3b2a1"
    end

    def install
      bin.install "git-health-checker" => "githealthchecker"
    end

    test do
      system "#{bin}/githealthchecker", "--help"
      output = shell_output("#{bin}/githealthchecker version")
      assert_match version.to_s, output
    end
  end