class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.1.1_darwin_arm64.tar.gz"
      sha256 "3110e82d512c9d3e3768d0259c668cf314f07356ab5df0ca097643715ac0d12c"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.1.1_darwin_amd64.tar.gz"
      sha256 "53d5a351ee3791d2b6c3b9b9e7b8e7907fd02195d7100bccacf160b74e5e4642"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
