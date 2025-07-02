class Githealthchecker < Formula
  desc "Comprehensive CLI tool to analyze Git repositories for security, performance, and quality issues"
  homepage "https://github.com/seanhalberthal/githealthchecker"
  url "https://github.com/seanhalberthal/githealthchecker/releases/download/v1.1.1/githealthchecker-v1.1.1-darwin-amd64.tar.gz"
  version "1.1.1"
  sha256 "02d9269e054834ad88bb18bbdc2bb01dac3771f8116a83f2f09509837f6dfe64"
  license "MIT"

  on_linux do
    url "https://github.com/seanhalberthal/githealthchecker/releases/download/v1.1.1/githealthchecker-v1.1.1-linux-amd64.tar.gz"
    sha256 "eff7a794385dbebd8744d060ebfd1e106e72446a4a51cc8444767d596e5ef3b9"
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
