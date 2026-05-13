class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.1.0_darwin_arm64.tar.gz"
      sha256 "409be78f2517574258080e9a76a5a9108b926c994195b4f992bdb764cc0799dc"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.1.0_darwin_amd64.tar.gz"
      sha256 "37fc1b235e9656e77b1ac76f5473cd6e3faae43acb549d82d6e4a945e3c2faf7"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
