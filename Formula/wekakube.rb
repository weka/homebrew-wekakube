class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.8.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.8.5_darwin_arm64.tar.gz"
      sha256 "c91de15d8b88cca93e9a37957357e741df0d42901240c6e91d378f23e0c75d13"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.8.5_darwin_amd64.tar.gz"
      sha256 "9da38b9addb8bf77a774674ad2d34fa43b399354536bb908472b30132dbc5bba"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
