class Turnkey < Formula
  desc "Turnkey CLI"
  homepage "https://github.com/tkhq/tkcli"
  version "v1.1.1"
  license "Apache License 2.0"

  if Hardware::CPU.arm?
    url "https://github.com/tkhq/tkcli/releases/download/v1.1.3/turnkey.darwin-aarch64", using: CurlDownloadStrategy
    sha256 "4e6881ec55c1172aa6fcc870710eb4b36bcfc906cd3df334b4041c7ce558db32"

    def install
      bin.install "turnkey.darwin-aarch64" => "turnkey"
    end
  end
  if Hardware::CPU.intel?
    url "https://github.com/tkhq/tkcli/releases/download/v1.1.3/turnkey.darwin-x86_64", using: CurlDownloadStrategy
    sha256 "175db6f89e62eb192509600d63425333c43d283dbe2370bf2ca74a5b786fa808"

    def install
      bin.install "turnkey.darwin-x86_64" => "turnkey"
    end
  end

end
