class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.0.0_darwin_arm64.tar.gz"
      sha256 "cd6e5cfdc6b8c8c731fe2744970bdaf8e4737310913243ede9488c4abb967159"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.0.0_darwin_amd64.tar.gz"
      sha256 "4a215a0ce961cfeaf18aaa72127564242cb5c1dd5b70a55790cd1f685914b85d"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
