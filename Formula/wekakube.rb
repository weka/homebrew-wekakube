class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.16.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.16.1_darwin_arm64.tar.gz"
      sha256 "cb97e45d6751c8c8684c6e2d82e7261335ffcc661d0f6c5cd4168a37904af7bd"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.16.1_darwin_amd64.tar.gz"
      sha256 "ae11d7ff7ab3a2c700974456b300d4f4ac419f9248ccdf7e2384c67904f08256"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
