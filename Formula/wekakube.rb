class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.2.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.2.3_darwin_arm64.tar.gz"
      sha256 "cb3feabd8c13f226693d58e2f4129af45e5b39fd7adee81b827d8064b88b7788"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.2.3_darwin_amd64.tar.gz"
      sha256 "eb30e4359e35befc29c741026bfa315553c096a78c2da23f87f5fbc8c248d629"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
