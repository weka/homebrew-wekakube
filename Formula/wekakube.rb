class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.1.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.1.3_darwin_arm64.tar.gz"
      sha256 "9b6e854d638d15260ee5023954f1d6fe7962d75d529a57b87a9474f16248bf79"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.1.3_darwin_amd64.tar.gz"
      sha256 "37055536c7c2b8fe88e6801641375e9aa4ef901d12ac8182fd5a3a0868d14044"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
