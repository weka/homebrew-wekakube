class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.21.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.21.2_darwin_arm64.tar.gz"
      sha256 "019781c022d3f563c096f966d671c14cf89b0ecaf63b803e5d5d7a89ec053f90"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.21.2_darwin_amd64.tar.gz"
      sha256 "fdfcf5b882d745cd3dbb573069a8246b20f81acda35d4df5ea06f9ed5d7a706d"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
