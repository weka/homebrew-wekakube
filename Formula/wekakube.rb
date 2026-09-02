class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.11.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.11.0_darwin_arm64.tar.gz"
      sha256 "723ad55a37b8631ecd99242862c28e1ddb5db03851b41e14c064d33f14d8c1ea"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.11.0_darwin_amd64.tar.gz"
      sha256 "8fd8654927305e50ded91d4baa02ebb129e8fc27e79688519e2589edf27daa09"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
