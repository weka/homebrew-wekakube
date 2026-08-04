class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.9.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.9.0_darwin_arm64.tar.gz"
      sha256 "a0a20497d9c502910c4a889332b41cbf16224862b8e6b9cf60c18e1c1e1dc436"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.9.0_darwin_amd64.tar.gz"
      sha256 "302c9aec3d536e79ce894a75ea0b38cfb512c3d08ef8d100df091c795e61225a"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
