class Sonarsweep < Formula
  desc "SonarQube Issue Exporter - Fetch issues to CSV beautifully"
  homepage "https://github.com/ariffrahimin/sonarsweep"
  version "1.1.8"

  on_macos do
    on_arm do
      url "https://github.com/ariffrahimin/sonarsweep/releases/download/v1.1.8/sonarsweep-darwin-arm64.tar.gz"
      sha256 "363af9bdb5b4d909e9e88cc81317090d7ae3264c5a09e1f3f8998a0fb0a59943"
    end
    on_intel do
      url "https://github.com/ariffrahimin/sonarsweep/releases/download/v1.1.8/sonarsweep-darwin-amd64.tar.gz"
      sha256 "f955a9def10f1f67353bf81d489ea7ffab294e366c34f09cedce3efd0fe1de3f"
    end
  end

  on_linux do
    url "https://github.com/ariffrahimin/sonarsweep/releases/download/v1.1.8/sonarsweep-linux-amd64.tar.gz"
    sha256 "d663a3a9f1a6c892cb66be454fb670dde850523effc117d16877f72da7634c1a"
  end

  def install
    bin.install "sonarsweep"
  end

  test do
    system "#{bin}/sonarsweep", "--version"
  end
end
