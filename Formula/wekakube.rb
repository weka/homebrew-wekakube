class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.7.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.7.0_darwin_arm64.tar.gz"
      sha256 "703da9412301fa3612eac7ca8946c2212406b39f3eaf7f5f47553b1ba9f43364"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.7.0_darwin_amd64.tar.gz"
      sha256 "0f22db392d6a4a9b14217c3ce0a6b8edf9bc97f0c36a0d241027792b6a451a61"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
