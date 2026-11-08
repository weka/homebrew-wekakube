class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.21.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.21.0_darwin_arm64.tar.gz"
      sha256 "8103a717f5c6cb8c70f1c447178b6c31b56ad83500ae67dcdc6cb7de9afdeb35"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.21.0_darwin_amd64.tar.gz"
      sha256 "e275265d6cd4fd913914291368834e20c083510eff4304b567c3e79b458ef9d5"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
