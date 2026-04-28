class Sonarsweep < Formula
  desc "SonarQube Issue Exporter - Fetch issues to CSV beautifully"
  homepage "https://github.com/ariffrahimin/sonarsweep"
  version "VERSION_PLACEHOLDER"

  on_macos do
    on_arm do
      url "https://github.com/ariffrahimin/sonarsweep/releases/download/vVERSION_PLACEHOLDER/sonarsweep-darwin-arm64.tar.gz"
      sha256 "sha256-darwin-arm64 = 15f10ce8d0ac028f8a7674f3918957777de60a985aec7324adbb44f6b1370f94
    end
    on_intel do
      url "https://github.com/ariffrahimin/sonarsweep/releases/download/vVERSION_PLACEHOLDER/sonarsweep-darwin-amd64.tar.gz"
      sha256 "sha256-darwin-amd64 = 51e3ae5ce8ef3eef526fe55648ae0c11f9c8576128b9f87e9f41e52fe0a7ed6d
    end
  end

  on_linux do
    url "https://github.com/ariffrahimin/sonarsweep/releases/download/vVERSION_PLACEHOLDER/sonarsweep-linux-amd64.tar.gz"
    sha256 "sha256-linux-amd64 = 73c14d171d981f92790efd3af6bcd4b065887c5f81e240a896cadf14dbf1a2b8
  end

  def install
    bin.install "sonarsweep"
  end

  test do
    system "#{bin}/sonarsweep", "--version"
  end
end