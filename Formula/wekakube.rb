class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.6.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.6.2_darwin_arm64.tar.gz"
      sha256 "fba247f9ffd4f738f18b5c0024c595ef2f8aa3677dc022c7598df579ba8dcde4"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.6.2_darwin_amd64.tar.gz"
      sha256 "c256d8b08da3a85ccebab36355ee8d35f087a7689f26414374870f1e8d6577c3"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
