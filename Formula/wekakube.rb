class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.0.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/weka/homebrew-wekakube/releases/download/v1.0.1/wekakube_1.0.1_darwin_arm64.tar.gz"
      sha256 "97af4cdb8443221b31fd89b47b35e415304d2e19eab53f13be4c60e63408c94b"
    end
    on_intel do
      url "https://github.com/weka/homebrew-wekakube/releases/download/v1.0.1/wekakube_1.0.1_darwin_amd64.tar.gz"
      sha256 "aa69d77f4f41a33b54c77b86887aa6efaec3e88fb5ade9ee4f4869ba9ea70d90"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
