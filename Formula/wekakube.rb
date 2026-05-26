class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.2.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.2.2_darwin_arm64.tar.gz"
      sha256 "84728ca1849fe0462fe03e58dd614464189eca57c8ab96ab03b3298abdad6dbb"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.2.2_darwin_amd64.tar.gz"
      sha256 "4b0cee5d9e31dc4d1880fa0dd6b3d9efb5da0c4d0e63a63b70602d42fc196a42"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
