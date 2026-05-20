class Wekakube < Formula
  desc "CLI tool for managing Weka Kubernetes resources"
  homepage "https://github.com/weka/wekakube"
  version "1.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/wekakube/releases/wekakube_1.2.0_darwin_arm64.tar.gz"
      sha256 "e327641ef61cf4ee996aa998e1fb1b98f658aa7bf5255229f22f35000015b65f"
    end
    on_intel do
      url "https://weka.github.io/wekakube/releases/wekakube_1.2.0_darwin_amd64.tar.gz"
      sha256 "09eb0f667ec37660162ae0433eda6aec14c6e1b504d3c0b2f4f32102b91ead62"
    end
  end

  def install
    bin.install "wekakube"
  end

  test do
    system "#{bin}/wekakube", "--version"
  end
end
