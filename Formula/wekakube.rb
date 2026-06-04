class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.3.0_darwin_arm64.tar.gz"
      sha256 "2129b1e6ce11276db65741a163e018bb427dd5646e9747db731ea8e80000148e"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.3.0_darwin_amd64.tar.gz"
      sha256 "32c9c6bad274922832847c6a59daa86e38eab4db414068b9856b81e0fc7b17e8"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
