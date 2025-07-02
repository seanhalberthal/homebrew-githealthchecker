  class Githealthchecker < Formula
    desc "Comprehensive CLI tool to analyze Git repositories for security, performance, and quality issues"
    homepage "https://github.com/seanhalberthal/githealthchecker"
    url "https://github.com/seanhalberthal/githealthchecker/releases/download/v1.0.5/githealthchecker-v1.0.5-darwin-amd64.tar.gz"
    version "1.0.7"
    sha256 "325af71b49b406ea2424ef11fdc9103f4619d35b4e0748a590dbb705ce3de4b0"
    license "MIT"

    on_linux do
      url "https://github.com/seanhalberthal/githealthchecker/releases/download/v1.0.5/githealthchecker-v1.0.5-linux-amd64.tar.gz"
      sha256 "842f76caf5a4b3b6352ec450db7fbb175ffd402d1b753802055c47afda2dfd61"
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