class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.11.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.11.2_darwin_arm64.tar.gz"
      sha256 "c1c3492d84e8d7b8b97965ec2b7dcb7e89c957cd6f504e54d0e2bdf20f4cfb04"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.11.2_darwin_amd64.tar.gz"
      sha256 "8d8be3159f7683eb26d28a00a8dcce86f3c1ccc053fa085c5d11195841b69300"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
