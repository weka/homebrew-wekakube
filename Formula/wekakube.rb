class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.2.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.2.1_darwin_arm64.tar.gz"
      sha256 "fc40f5eab118e4a77ef38cb67d550294f775ac308a743c002840b1f59c943c42"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.2.1_darwin_amd64.tar.gz"
      sha256 "51816b515fcefc4f55749cfcb319a6192fbadd4439fdbc174c074b50f93c8d13"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
