class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.17.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.17.0_darwin_arm64.tar.gz"
      sha256 "31aae4fd5a27197a67e6605a886ce3d8c0cf5fd49ab14471d424d9ac308efc2b"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.17.0_darwin_amd64.tar.gz"
      sha256 "436b63def774f25aa2074028a0ef43f6b0881fa7f7c56c25632db8ece9878adf"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
