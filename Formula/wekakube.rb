class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.15.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.15.1_darwin_arm64.tar.gz"
      sha256 "fa07db7d45e0ed291fcde8ad4c515df8542d00bd57fe79eb175d9225773f7ff3"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.15.1_darwin_amd64.tar.gz"
      sha256 "1ca0ecb196233c642727a228f6a2f7763bca2d6d11e09622ab20bf4a300a5e57"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
