class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.6.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.6.0_darwin_arm64.tar.gz"
      sha256 "deb2d18668c734ffda3af7e069ff6fb90dfd59d6995c15cb5be319445e87b205"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.6.0_darwin_amd64.tar.gz"
      sha256 "77665191019112b024915d1d1a32da15615137ab82eda7dedb9537342f68e06b"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
