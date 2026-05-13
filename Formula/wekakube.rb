class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.0.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/weka/wekakube/releases/download/v1.0.1/wekakube_1.0.1_darwin_arm64.tar.gz"
      sha256 "4fa281e4bd2a649a6b64400cde7773c6c2b18b3e490482f140d526abd648eba3"
    end
    on_intel do
      url "https://github.com/weka/wekakube/releases/download/v1.0.1/wekakube_1.0.1_darwin_amd64.tar.gz"
      sha256 "267db765797a448d7bcabda4606de05dd5aeb8503b496739b0974991749f35f1"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
