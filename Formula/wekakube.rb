class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.2.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.2.5_darwin_arm64.tar.gz"
      sha256 "f4bfdc91606b1b845c0dab14b9b88de26423f369c7ed7626b85ae91a649ba2f3"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.2.5_darwin_amd64.tar.gz"
      sha256 "0a641c95ebdfbf872e43026963e530efc275f5b2cc86e03ce68193928a1dbc4f"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
