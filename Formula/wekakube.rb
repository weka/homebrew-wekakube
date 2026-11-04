class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.18.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.18.0_darwin_arm64.tar.gz"
      sha256 "33e47f50ab83955d6a1cdde6d13dcefb8bca8da20721a4aecaa988ba7c90299f"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.18.0_darwin_amd64.tar.gz"
      sha256 "7acc6bcdbaa91cd3a9f8b0204a0198f8bc596179df2c070f4770b587e1b20688"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
