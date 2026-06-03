class Sonarsweep < Formula
  desc "SonarQube Issue Exporter - Fetch issues to CSV beautifully"
  homepage "https://github.com/ariffrahimin/sonarsweep"
  version "1.2.5"

  on_macos do
    on_arm do
      url "https://github.com/ariffrahimin/sonarsweep/releases/download/v1.2.5/sonarsweep-darwin-arm64.tar.gz"
      sha256 "c61b72c5a06919fdeaa4cac0696cb36075c74f13c9fa8ccf59c32ca2db145e3f"
    end
    on_intel do
      url "https://github.com/ariffrahimin/sonarsweep/releases/download/v1.2.5/sonarsweep-darwin-amd64.tar.gz"
      sha256 "8ec75968593fc15b0a6aa95e49a283e94e606a6e23098922a2b9083c6dde21de"
    end
  end

  on_linux do
    url "https://github.com/ariffrahimin/sonarsweep/releases/download/v1.2.5/sonarsweep-linux-amd64.tar.gz"
    sha256 "6975620b43b2c2fa6aea8fc539fb25a7d4eb02de0b60aa4a6d0a267d911bcf24"
  end

  def install
    bin.install "sonarsweep"
  end

  test do
    system "#{bin}/sonarsweep", "--version"
  end
end
