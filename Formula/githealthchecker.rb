class Githealthchecker < Formula
    desc "Comprehensive CLI tool to analyze Git repositories for security, performance, and quality issues"
    homepage "https://github.com/seanhalberthal/githealthchecker"
    url "https://github.com/seanhalberthal/githealthchecker/releases/download/v1.0.0/git-health-checker-v1.0.0-d
  arwin-amd64.tar.gz"
    version "1.0.0"
    sha256 "REPLACE_WITH_ACTUAL_SHA256"
    license "MIT"

    on_linux do
      url "https://github.com/seanhalberthal/githealthchecker/releases/download/v1.0.0/git-health-checker-v1.0.0
  -linux-amd64.tar.gz"
      sha256 "REPLACE_WITH_ACTUAL_SHA256_FOR_LINUX"
    end

    def install
      bin.install "git-health-checker"
    end

    test do
      system "#{bin}/git-health-checker", "--help"
      output = shell_output("#{bin}/git-health-checker version")
      assert_match version.to_s, output
    end
  end