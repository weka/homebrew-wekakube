class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.8.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.8.7_darwin_arm64.tar.gz"
      sha256 "edefac28c56327c57ac4b3cca9ca59baaa3c96a6b0ca3bd8898d3f97e548a699"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.8.7_darwin_amd64.tar.gz"
      sha256 "64de4e42f2ce61db9ae4b756ddffe61c69c53ab6dd2eebf3c426b4a59a32b34c"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
