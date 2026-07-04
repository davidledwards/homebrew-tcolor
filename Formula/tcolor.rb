class Tcolor < Formula
  desc "Displays ANSI colors on the terminal"
  homepage "https://github.com/davidledwards/tcolor"
  version "0.3.0"
  url_prefix = "https://github.com/davidledwards/tcolor/releases/download/v#{version}/keyb-#{version}"

  on_macos do
    on_arm do
      url "#{url_prefix}-aarch64-apple-darwin.tar.gz"
      sha256 "b1c5ef91194f15f73a4dfa7e8186657ae6853affecca893e5ecc40cfff04449a" # aarch64-apple-darwin
    end
    on_intel do
      url "#{url_prefix}-x86_64-apple-darwin.tar.gz"
      sha256 "a7b0f3b0e7bf7a2afb10e7bb3c6339e33a4be96947fb7baa88656784fdb42153" # x86_64-apple-darwin
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "#{url_prefix}-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "a7b0f3b0e7bf7a2afb10e7bb3c6339e33a4be96947fb7baa88656784fdb42153" # x86_64-unknown-linux-gnu
      else
        url "#{url_prefix}-i686-unknown-linux-gnu.tar.gz"
        sha256 "a7b0f3b0e7bf7a2afb10e7bb3c6339e33a4be96947fb7baa88656784fdb42153" # i686-unknown-linux-gnu
      end
    end
  end

  def install
    bin.install "tcolor"
  end

  test do
    system "#{bin}/tcolor", "--version"
  end
end
