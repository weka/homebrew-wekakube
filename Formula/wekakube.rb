class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.12.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.12.0_darwin_arm64.tar.gz"
      sha256 "9520aa74c56bb497bbfd65989f73e541c8dc73508a8c0b9ae8798947efc4a773"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.12.0_darwin_amd64.tar.gz"
      sha256 "ae798c408c54262b1905cc5b288a883829c4582c16affb18bd248e4baf4e9210"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
