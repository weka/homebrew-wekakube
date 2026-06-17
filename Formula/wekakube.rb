class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.6.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.6.1_darwin_arm64.tar.gz"
      sha256 "44cff9979a34ae030f5e25781c2010017b34486478e9bc66fa72d0dd827e4fce"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.6.1_darwin_amd64.tar.gz"
      sha256 "51667819739ba06b03eeb090355f9bee6f1334d7fc61244ebfe7ec191f82ba71"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
