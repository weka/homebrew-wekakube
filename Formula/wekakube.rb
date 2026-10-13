class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.15.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.15.3_darwin_arm64.tar.gz"
      sha256 "ac3eea5cbd9815d07f7895d62268f10e6be04940048b364a1fc09a52754de8d5"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.15.3_darwin_amd64.tar.gz"
      sha256 "de9a667880ee754f943b3bbb4b2cddf5b0d048005330e8ffe49d44d050aea859"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
