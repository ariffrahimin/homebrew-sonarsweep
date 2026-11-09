class Sonarsweep < Formula
  desc "SonarQube Issue Exporter - Fetch issues to CSV beautifully"
  homepage "https://github.com/ariffrahimin/sonarsweep"
  version "1.2.7"

  on_macos do
    on_arm do
      url "https://github.com/ariffrahimin/sonarsweep/releases/download/v1.2.7/sonarsweep-darwin-arm64.tar.gz"
      sha256 "68db00ca84e9db692f555d87204a9e606503d8eee62cd40ea0e6edaac92ff42b"
    end
    on_intel do
      url "https://github.com/ariffrahimin/sonarsweep/releases/download/v1.2.7/sonarsweep-darwin-amd64.tar.gz"
      sha256 "68c318104fe9b39486a7c12d01ebf0ea22e40db87b484495c654d7230e167311"
    end
  end

  on_linux do
    url "https://github.com/ariffrahimin/sonarsweep/releases/download/v1.2.7/sonarsweep-linux-amd64.tar.gz"
    sha256 "9300864ca1f0649e8f23cd5ce173e28cba81bc5da668b9dd4d947d0c2057a84b"
  end

  def install
    bin.install "sonarsweep"
  end

  test do
    system "#{bin}/sonarsweep", "--version"
  end
end
