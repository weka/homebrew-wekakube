class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.8.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.8.2_darwin_arm64.tar.gz"
      sha256 "c1afb2f3a073f3fc5304e64739a67e3f01b2c2f7a30305f7be774aa066625ea6"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.8.2_darwin_amd64.tar.gz"
      sha256 "30fc21f275c82b37ffc5fe9c1709b93d77fb8095e287b76272688aac8eb6346d"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
