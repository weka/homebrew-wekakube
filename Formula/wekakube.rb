class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.8.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.8.3_darwin_arm64.tar.gz"
      sha256 "fc3f47844faa191049c7cbbe23e241b1833e3282c3b77d9789c779e8057744c4"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.8.3_darwin_amd64.tar.gz"
      sha256 "1460823280ba29e609d62c01e4f61d75ff91f5e8865a515a4262bac09afd2094"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
