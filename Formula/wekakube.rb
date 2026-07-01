class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.8.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.8.1_darwin_arm64.tar.gz"
      sha256 "844ec32e5de49641054716c6b0b6d4d7496b3fc5b992ef4393174769358db359"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.8.1_darwin_amd64.tar.gz"
      sha256 "82960908e756393bbf1cc512479145d913b1d914c41dca0135b84b52bce17b94"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
