class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.5.0_darwin_arm64.tar.gz"
      sha256 "21e90037f431d233c8e1d215d0ab88f963c9111e340c671d7a9a75d9900423d0"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.5.0_darwin_amd64.tar.gz"
      sha256 "9cebc17efbe1d71688803e32a212419f1ed6cb2301a3f3c2113fb58951726122"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
