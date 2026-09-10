class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.13.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.13.0_darwin_arm64.tar.gz"
      sha256 "8d72746feb1b94eda77221613c7fbd487065b6d76b98320e20cabf988750bce7"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.13.0_darwin_amd64.tar.gz"
      sha256 "1cc9b19d6ed6ba73fb61e1fafc56d9e8811a26019015353f6ef366a07d4d90d5"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
