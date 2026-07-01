class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.8.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.8.0_darwin_arm64.tar.gz"
      sha256 "c7078def0133afcc30569983bda6fa184b1ef68a9d9f80522bbcd266b6ac39bb"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.8.0_darwin_amd64.tar.gz"
      sha256 "b446fe38bacb70a0a5c010a7b922b35ef777442da3493c55aec4c24e54ed17c3"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
