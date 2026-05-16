class Sonarsweep < Formula
  desc "SonarQube Issue Exporter - Fetch issues to CSV beautifully"
  homepage "https://github.com/ariffrahimin/sonarsweep"
  version "1.2.4"

  on_macos do
    on_arm do
      url "https://github.com/ariffrahimin/sonarsweep/releases/download/v1.2.4/sonarsweep-darwin-arm64.tar.gz"
      sha256 "957b4299713fe8e2e2d9f1e16e1beadb8acba3d122a67d6ccad17983739d67c4"
    end
    on_intel do
      url "https://github.com/ariffrahimin/sonarsweep/releases/download/v1.2.4/sonarsweep-darwin-amd64.tar.gz"
      sha256 "e1f887972ef2824c8f871a831bf87f9e15ca6c0da314844784fa66ea0b71c387"
    end
  end

  on_linux do
    url "https://github.com/ariffrahimin/sonarsweep/releases/download/v1.2.4/sonarsweep-linux-amd64.tar.gz"
    sha256 "838222d870b8ba7af4557cffbf3bac652b93b17fd0294ddd6cbd80b6d20cdcc8"
  end

  def install
    bin.install "sonarsweep"
  end

  test do
    system "#{bin}/sonarsweep", "--version"
  end
end
