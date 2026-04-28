class Sonarsweep < Formula
  desc "SonarQube Issue Exporter - Fetch issues to CSV beautifully"
  homepage "https://github.com/ariffrahimin/sonarsweep"
  version "VERSION_PLACEHOLDER"

  on_macos do
    on_arm do
      url "https://github.com/ariffrahimin/sonarsweep/releases/download/vVERSION_PLACEHOLDER/sonarsweep-darwin-arm64.tar.gz"
      sha256 "sha256-darwin-arm64 = f319d5da958e7972f93da079a021e86ba9fe2039368418d1aa1365347e890d6c
    end
    on_intel do
      url "https://github.com/ariffrahimin/sonarsweep/releases/download/vVERSION_PLACEHOLDER/sonarsweep-darwin-amd64.tar.gz"
      sha256 "sha256-darwin-amd64 = e7e7948a1a1d385822168886ce00dbcd9790aa8e4f8868f83507a81b9e002399
    end
  end

  on_linux do
    url "https://github.com/ariffrahimin/sonarsweep/releases/download/vVERSION_PLACEHOLDER/sonarsweep-linux-amd64.tar.gz"
    sha256 "sha256-linux-amd64 = f17e11ef109ac02edd627903d383cca5cc9fafa74614f00fcfcc80abe05212ea
  end

  def install
    bin.install "sonarsweep"
  end

  test do
    system "#{bin}/sonarsweep", "--version"
  end
end