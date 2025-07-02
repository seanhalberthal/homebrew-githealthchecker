  class Githealthchecker < Formula
    desc "Comprehensive CLI tool to analyze Git repositories for security, performance, and quality issues"
    homepage "https://github.com/seanhalberthal/githealthchecker"
    url "https://github.com/seanhalberthal/githealthchecker/releases/download/v1.0.5/githealthchecker-v1.0.5-darwin-amd64.tar.gz"
    version "1.0.5"
    sha256 "ee53006b8de6a15ae640e95f7a5f7daaae95966bc7afd848423f97eed2693b4c"
    license "MIT"

    on_linux do
      url "https://github.com/seanhalberthal/githealthchecker/releases/download/v1.0.5/githealthchecker-v1.0.5-linux-amd64.tar.gz"
      sha256 "cb8a3611b72e144f9802cfe2c0854fcab04b6191cecabbe506d2f03c4af92e95"
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