  class Githealthchecker < Formula
    desc "Comprehensive CLI tool to analyze Git repositories for security, performance, and quality issues"
    homepage "https://github.com/seanhalberthal/githealthchecker"
    url "https://github.com/seanhalberthal/githealthchecker/releases/download/v1.0.7/githealthchecker-v1.0.7-darwin-amd64.tar.gz"
    version "1.0.7"
    sha256 "8694a0e8e15d34d2270ee17ac503556ed7f64a91dc318498d795f7258d277dd0"
    license "MIT"

    on_linux do
      url "https://github.com/seanhalberthal/githealthchecker/releases/download/v1.0.7/githealthchecker-v1.0.7-linux-amd64.tar.gz"
      sha256 "fd25f54d748fe8bed0bb90b238060669b7a5a109de16c21bb4eb7d427489fde8"
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