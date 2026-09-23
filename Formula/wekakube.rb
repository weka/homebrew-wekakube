class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.13.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.13.1_darwin_arm64.tar.gz"
      sha256 "0fb32aa7fa8903df8f069d24f5505d60c463fd3320a083524360eb3395cc67ce"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.13.1_darwin_amd64.tar.gz"
      sha256 "05536025b2bfba48e9115edf27229820da783202dce49db62a033c75c96be586"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
