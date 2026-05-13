class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/weka/wekakube/releases/download/v1.0.0/wekakube_1.0.0_darwin_arm64.tar.gz"
      sha256 "ad912cb914f34af9856b54b1ac8a1adc25290adf0c6bcf4df78ec16523eb7eaf"
    end
    on_intel do
      url "https://github.com/weka/wekakube/releases/download/v1.0.0/wekakube_1.0.0_darwin_amd64.tar.gz"
      sha256 "e48a8c4d2b73ac8307045a79dbda053c2c6421d1f63f57ec9e0e0cd051f9ab17"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
