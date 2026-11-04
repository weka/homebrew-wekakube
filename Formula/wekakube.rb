class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.19.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.19.0_darwin_arm64.tar.gz"
      sha256 "64ab402eb8cd638d83d6b8f446ad9ede166478faafa032847701d38b20e4ef1b"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.19.0_darwin_amd64.tar.gz"
      sha256 "746013d6895d755ac8e7daa2fc9261b1d40434f7a4f31391eaa706f4916e1604"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
