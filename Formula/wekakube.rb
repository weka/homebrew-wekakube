class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.6.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.6.3_darwin_arm64.tar.gz"
      sha256 "fb8fe51f6c33ccde92640ceee0dbabcc17a7fd62846e95a685ea74aceb919241"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.6.3_darwin_amd64.tar.gz"
      sha256 "a1501e29713dcfca8f89cc6254dc94185941beed4b7aceb06da951a8e53fdacb"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
