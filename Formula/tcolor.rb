class Tcolor < Formula
  desc "Displays ANSI colors on the terminal"
  homepage "https://github.com/davidledwards/tcolor"
  version "0.3.0"

  if OS.linux? || OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/davidledwards/tcolor/releases/download/v" + version + "/tcolor-" + version + "-x86_64-unix.tar.gz"
      sha256 "a7b0f3b0e7bf7a2afb10e7bb3c6339e33a4be96947fb7baa88656784fdb42153"
    elsif Hardware::CPU::arm?
      url "https://github.com/davidledwards/tcolor/releases/download/v" + version + "/tcolor-" + version + "-aarch64-unix.tar.gz"
      sha256 "b1c5ef91194f15f73a4dfa7e8186657ae6853affecca893e5ecc40cfff04449a"
    end
  end

  def install
    bin.install "tcolor"
  end
end
