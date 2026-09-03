class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.11.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.11.1_darwin_arm64.tar.gz"
      sha256 "4124e9c9fd4965f388192e82f1e528020fdbedc9cdc01370445fa1d6531af7b0"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.11.1_darwin_amd64.tar.gz"
      sha256 "b8e9c02a009b902aca9ce39f0de030334681d14e82c16c7b3b67ce2b0e52f6a2"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
