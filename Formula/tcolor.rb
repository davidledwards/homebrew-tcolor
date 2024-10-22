class Tcolor < Formula
  desc "Displays ANSI colors on the terminal"
  homepage "https://github.com/davidledwards/tcolor"
  version "0.1.0"

  if OS.linux? || OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/davidledwards/tcolor/releases/download/v" + version + "/tcolor-" + version + "-x86_64-unix.tar.gz"
      sha256 "1aa009329df70d37a6b67f8d2a6bb3b27c601021bca7c68e72556d3623c868aa"
    elsif Hardware::CPU::arm?
      url "https://github.com/davidledwards/tcolor/releases/download/v" + version + "/tcolor-" + version + "-aarch64-unix.tar.gz"
      sha256 "f1d2fc401f065e99901811e23f18d8cb792ec363703089f49d6f1dc03b2a86f7"
    end
  end

  def install
    bin.install "tcolor"
  end
end
