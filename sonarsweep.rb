class Sonarsweep < Formula
  desc "SonarQube Issue Exporter - Fetch issues to CSV beautifully"
  homepage "https://github.com/ariffrahimin/sonarsweep"
  version "VERSION_PLACEHOLDER"

  on_macos do
    on_arm do
      url "https://github.com/ariffrahimin/sonarsweep/releases/download/vVERSION_PLACEHOLDER/sonarsweep-darwin-arm64.tar.gz"
      sha256 "sha256-darwin-arm64 = fdf3e1d880d41989d315a27350375acf97a827c8d42fbc1dae03a684636177f0
    end
    on_intel do
      url "https://github.com/ariffrahimin/sonarsweep/releases/download/vVERSION_PLACEHOLDER/sonarsweep-darwin-amd64.tar.gz"
      sha256 "sha256-darwin-amd64 = d2aa649afe35ed704f2d5027dc2eb84a0648d11faef96cc75f1bf72623fbbe36
    end
  end

  on_linux do
    url "https://github.com/ariffrahimin/sonarsweep/releases/download/vVERSION_PLACEHOLDER/sonarsweep-linux-amd64.tar.gz"
    sha256 "sha256-linux-amd64 = 55d24d9e1b550cd004bf05523cc9433e5983de9f7f5d071ea818ea507ed7458a
  end

  def install
    bin.install "sonarsweep"
  end

  test do
    system "#{bin}/sonarsweep", "--version"
  end
end