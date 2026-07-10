class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.8.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.8.6_darwin_arm64.tar.gz"
      sha256 "76199207372fa53320671098d1cf758ebcde3f2b71fe9ff1548b95761ebd8468"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.8.6_darwin_amd64.tar.gz"
      sha256 "96545421ac2f3567c031697ab2a210b31b78fcfb42696049b430bfd6951f4e4b"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
