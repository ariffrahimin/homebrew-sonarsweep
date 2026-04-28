class Sonarsweep < Formula
  desc "SonarQube Issue Exporter - Fetch issues to CSV beautifully"
  homepage "https://github.com/ariffrahimin/sonarsweep"
  version "1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/ariffrahimin/sonarsweep/releases/download/v1.0.0/sonarsweep-darwin-arm64.tar.gz"
      sha256 "5066f906be766f655e8715f4ddcb29e7e3d2d1459e965ff9d6b169c554853e1c"
    end
    on_intel do
      url "https://github.com/ariffrahimin/sonarsweep/releases/download/v1.0.0/sonarsweep-darwin-amd64.tar.gz"
      sha256 "9c6ab1937c74781c05e1cbd25562bb93f42c3490e302a9032007015d181e4525"
    end
  end

  on_linux do
    url "https://github.com/ariffrahimin/sonarsweep/releases/download/v1.0.0/sonarsweep-linux-amd64.tar.gz"
    sha256 "d95dfff33c986380ca3d0cf4fa8db4dd6d875d62718ce87c3b89944ef2afcdfa"
  end

  def install
    bin.install "sonarsweep"
  end

  test do
    system "#{bin}/sonarsweep", "--version"
  end
end
