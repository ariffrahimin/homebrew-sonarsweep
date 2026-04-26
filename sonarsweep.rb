class Sonarsweep < Formula
  desc "SonarQube Issue Exporter - Fetch issues to CSV beautifully"
  homepage "https://github.com/ariffrahimin/sonarsweep"
  version "VERSION_PLACEHOLDER"

  on_macos do
    on_arm do
      url "https://github.com/ariffrahimin/sonarsweep/releases/download/vVERSION_PLACEHOLDER/sonarsweep-darwin-arm64.tar.gz"
      sha256 "sha256-darwin-arm64 = ae64e9e167b9a5b60df7a024174524e17ee32032b9877ab27e6d25cb0f043717
    end
    on_intel do
      url "https://github.com/ariffrahimin/sonarsweep/releases/download/vVERSION_PLACEHOLDER/sonarsweep-darwin-amd64.tar.gz"
      sha256 "sha256-darwin-amd64 = 5139a84cd10ee3a2a92169b19254276d75b80ef99301c3086d03de65ec82d39f
    end
  end

  on_linux do
    url "https://github.com/ariffrahimin/sonarsweep/releases/download/vVERSION_PLACEHOLDER/sonarsweep-linux-amd64.tar.gz"
    sha256 "sha256-linux-amd64 = 19e14b6f6653cdcdae84d42671a1e30348a1090be5f970208eff1e3e15df8872
  end

  def install
    bin.install "sonarsweep"
  end

  test do
    system "#{bin}/sonarsweep", "--version"
  end
end