class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.15.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.15.4_darwin_arm64.tar.gz"
      sha256 "58be71d499dc2c685de819a15e09d87e92a5ebf33579c32138e318fcce7af610"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.15.4_darwin_amd64.tar.gz"
      sha256 "7aed3081d3c3766ff176b17a1ec823127663fccf57e0f9cbd6dd5be171a04305"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
