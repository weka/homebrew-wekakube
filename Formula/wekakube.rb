class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.21.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.21.1_darwin_arm64.tar.gz"
      sha256 "1c5d85e4abaa863770540cc81a5def2271c6b5690113d3d9e84a74ee90d82c7d"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.21.1_darwin_amd64.tar.gz"
      sha256 "866ae5bec4e9ce228fce860e81a64ebd5109691901c46eeb690c73ca766c5676"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
