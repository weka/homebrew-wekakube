class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.2.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.2.4_darwin_arm64.tar.gz"
      sha256 "70b506d74c9b5998f3fe307f4d9cd50ceb0c5747833b9f9f742ce189940a648a"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.2.4_darwin_amd64.tar.gz"
      sha256 "ab4990f81a257d7edd92813326cdacea95e4f4b32ef752a319d32b1eeb4bf416"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
