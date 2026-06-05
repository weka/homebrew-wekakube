class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.4.0_darwin_arm64.tar.gz"
      sha256 "b4dc21f83f7556b69b6bb42a5c76be6ea51748d599d0b53d435e067ff1fa311a"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.4.0_darwin_amd64.tar.gz"
      sha256 "a3533e82d1070d28eed24265214c2c4e90075517db99f76ce188926fa44eee5b"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
