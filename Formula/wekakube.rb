class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.7.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.7.1_darwin_arm64.tar.gz"
      sha256 "ba45a64120d0c79584183c61c77e74ba0d165c14df852ea415e6399988cd5b68"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.7.1_darwin_amd64.tar.gz"
      sha256 "562a3c0606b8c5585db1cd40cffd9a0b88623681995cdac76081c6e28a3ab4cb"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
