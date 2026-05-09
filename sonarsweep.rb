class Sonarsweep < Formula
  desc "SonarQube Issue Exporter - Fetch issues to CSV beautifully"
  homepage "https://github.com/ariffrahimin/sonarsweep"
  version "1.2.3"

  on_macos do
    on_arm do
      url "https://github.com/ariffrahimin/sonarsweep/releases/download/v1.2.3/sonarsweep-darwin-arm64.tar.gz"
      sha256 "7858410ce4fdbde25a73a0f43eadcb53f751e2bcfb3a901f9174aea03646ac79"
    end
    on_intel do
      url "https://github.com/ariffrahimin/sonarsweep/releases/download/v1.2.3/sonarsweep-darwin-amd64.tar.gz"
      sha256 "e83dedd996f530ec337e8fe5a1bc260113419ee5516f229a6ca024774e7a5c12"
    end
  end

  on_linux do
    url "https://github.com/ariffrahimin/sonarsweep/releases/download/v1.2.3/sonarsweep-linux-amd64.tar.gz"
    sha256 "30cfdf8a052dca68a2eb2f7e1330cdefd584f18e0af87ca5e65bc8f07d769fc7"
  end

  def install
    bin.install "sonarsweep"
  end

  test do
    system "#{bin}/sonarsweep", "--version"
  end
end
