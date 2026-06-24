class Sonarsweep < Formula
  desc "SonarQube Issue Exporter - Fetch issues to CSV beautifully"
  homepage "https://github.com/ariffrahimin/sonarsweep"
  version "1.2.6"

  on_macos do
    on_arm do
      url "https://github.com/ariffrahimin/sonarsweep/releases/download/v1.2.6/sonarsweep-darwin-arm64.tar.gz"
      sha256 "6d92b087b0582c3b70ca80d325b4d593a738b9d708531431c2a3177ddf560929"
    end
    on_intel do
      url "https://github.com/ariffrahimin/sonarsweep/releases/download/v1.2.6/sonarsweep-darwin-amd64.tar.gz"
      sha256 "1cf42c42b65d35ea66fce68d28af43a0265d56adb017bba6ca13dc41f2d01766"
    end
  end

  on_linux do
    url "https://github.com/ariffrahimin/sonarsweep/releases/download/v1.2.6/sonarsweep-linux-amd64.tar.gz"
    sha256 "28f9ebdb7beba190443797c0b69bc4cee078a4fd5f7b2e298210a41c73e96155"
  end

  def install
    bin.install "sonarsweep"
  end

  test do
    system "#{bin}/sonarsweep", "--version"
  end
end
