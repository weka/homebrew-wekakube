class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.16.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.16.0_darwin_arm64.tar.gz"
      sha256 "9f2991b9f24259b34a8f8daa1f6c535d1bf87c5fc4f5ade68fa3ba80eda28c47"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.16.0_darwin_amd64.tar.gz"
      sha256 "c18c2a6d70a5c42ecc42bd9461cbcaf7b42b1764559ad2d507bb5221b94b00cc"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
