class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.21.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.21.3_darwin_arm64.tar.gz"
      sha256 "f8dd7085376d396f811e76ab577e3247c85f2b773a064e9d8ecbcb6db2f212b1"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.21.3_darwin_amd64.tar.gz"
      sha256 "6c5710f34f3df4be8c8f7f2e906438b1b9bdc85e209896f224b62255631b676e"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
