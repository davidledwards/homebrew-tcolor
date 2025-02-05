class Tcolor < Formula
  desc "Displays ANSI colors on the terminal"
  homepage "https://github.com/davidledwards/tcolor"
  version "0.2.1"

  if OS.linux? || OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/davidledwards/tcolor/releases/download/v" + version + "/tcolor-" + version + "-x86_64-unix.tar.gz"
      sha256 "da61fd771fba652d6dcbd8c093163e1e25dd041797d7c8f3b9c8f3936a9e9300"
    elsif Hardware::CPU::arm?
      url "https://github.com/davidledwards/tcolor/releases/download/v" + version + "/tcolor-" + version + "-aarch64-unix.tar.gz"
      sha256 "254c5cc39b5e7e281fe29e88e45b5bc470efc8a8b3ae9855aeb0fe6f5b6e739a"
    end
  end

  def install
    bin.install "tcolor"
  end
end
