class Tcolor < Formula
  desc "Displays ANSI colors on the terminal"
  homepage "https://github.com/davidledwards/tcolor"
  version "0.4.0"
  url_prefix = "https://github.com/davidledwards/tcolor/releases/download/v#{version}/tcolor-#{version}"

  on_macos do
    on_arm do
      url "#{url_prefix}-aarch64-apple-darwin.tar.gz"
      sha256 "c8dd0fbf54c95e941b3e443129c84933a071fc78f771d373482459ef2df4cf2f" # aarch64-apple-darwin
    end
    on_intel do
      url "#{url_prefix}-x86_64-apple-darwin.tar.gz"
      sha256 "6e1c16ee5d3bc9bff9bb48c51986a233934f158b27f28e846a9fbeeeae2c2eb5" # x86_64-apple-darwin
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "#{url_prefix}-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "5dc61530d0965f1a3a7502baa6f41b12ddea79da397a0e3331991d419fb2e5e7" # x86_64-unknown-linux-gnu
      else
        url "#{url_prefix}-i686-unknown-linux-gnu.tar.gz"
        sha256 "55f80b8beb6283176c7b9e14cc5051fc29d74b8c6656e7a29b87c8240cee059e" # i686-unknown-linux-gnu
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
