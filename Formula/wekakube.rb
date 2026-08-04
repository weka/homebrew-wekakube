class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.10.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.10.0_darwin_arm64.tar.gz"
      sha256 "5f227406eaa285c71ec266102b2ec7dddb2af7b5043323d7331bab5af6ca93f0"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.10.0_darwin_amd64.tar.gz"
      sha256 "834217848162868e88345eb259328dc6971d6825b07c796283bcf3809bb85f81"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
