class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.14.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.14.0_darwin_arm64.tar.gz"
      sha256 "664cd33d86264e81208b3699572992449abbc2f0e75bac0b1452d26eb0df87cf"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.14.0_darwin_amd64.tar.gz"
      sha256 "59cbab13cc42b6d560abb0cbc76d7db960870aecbf41217cc040d340c76c8972"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
