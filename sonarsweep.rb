class Sonarsweep < Formula
  desc "SonarQube Issue Exporter - Fetch issues to CSV beautifully"
  homepage "https://github.com/ariffrahimin/sonarsweep"
  version "2.0.0"

  on_macos do
    on_arm do
      url "https://github.com/ariffrahimin/sonarsweep/releases/download/v2.0.0/sonarsweep-darwin-arm64.tar.gz"
      sha256 "002504cf7cca11d7a408e3ad6ed4b7d21affb3e91e1a2fc1738d7501fde0e716"
    end
    on_intel do
      url "https://github.com/ariffrahimin/sonarsweep/releases/download/v2.0.0/sonarsweep-darwin-amd64.tar.gz"
      sha256 "63c0e14aa20da90b6a86223d350d33aee5a7a447e8feba2ff911affa565b96b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ariffrahimin/sonarsweep/releases/download/v2.0.0/sonarsweep-linux-arm64.tar.gz"
      sha256 "c82e2974ff22053d715032ee5d441341095f82bef641d29d02b2183f104cf1b7"
    end
    on_intel do
      url "https://github.com/ariffrahimin/sonarsweep/releases/download/v2.0.0/sonarsweep-linux-amd64.tar.gz"
      sha256 "94e64bf8ee6c62f1ddcb08db71801a1076853e80e65f23ee908b44706297c389"
    end
  end

  def install
    bin.install "sonarsweep"
  end

  test do
    system "#{bin}/sonarsweep", "--version"
  end
end
