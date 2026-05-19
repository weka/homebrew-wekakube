class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.1.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.1.2_darwin_arm64.tar.gz"
      sha256 "f10da9cd905fa23798e09c15d161931ad69e6f6e62a7a76d29f00b9e32a1ecde"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.1.2_darwin_amd64.tar.gz"
      sha256 "f2d1a259ac79db57dddfd7c2356e170936741a9a2d2016753f554cb199d7aeaf"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
