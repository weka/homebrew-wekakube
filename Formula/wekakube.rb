class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.8.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.8.4_darwin_arm64.tar.gz"
      sha256 "b540e1d12fc5a0601533fbcb92b5b2048be7ffdbeeb3bfe0fcc9322bd519f1b7"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.8.4_darwin_amd64.tar.gz"
      sha256 "035beab018d5b8b1e57ab3a043e48eb67d33e928cb1736fccd6e9861237bc2ed"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
