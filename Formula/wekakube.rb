class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.20.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.20.0_darwin_arm64.tar.gz"
      sha256 "7855e2362fc174e815d1b543e476f5c8f25dee42ff193c7acd8c3cdbe32e52d3"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.20.0_darwin_amd64.tar.gz"
      sha256 "ee6126b2c48b2e1fa990ccfbfd05f935336f232f3dd71e93cca04fa3e81afc11"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
