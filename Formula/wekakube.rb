class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.15.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.15.2_darwin_arm64.tar.gz"
      sha256 "0110b983de9cebc4a73447ad90614672d34fd9f08936417f7958c76b977d510e"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.15.2_darwin_amd64.tar.gz"
      sha256 "a52907fda80e465736ac6941a64760fc7611c13c3fe39f44014ed94a5611787c"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
