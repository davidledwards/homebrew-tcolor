class Tcolor < Formula
  desc "Displays ANSI colors on the terminal"
  homepage "https://github.com/davidledwards/tcolor"
  version "0.2.0"

  if OS.linux? || OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/davidledwards/tcolor/releases/download/v" + version + "/tcolor-" + version + "-x86_64-unix.tar.gz"
      sha256 "0dec4bb6996095152d614e016cb4de464a7ce0be53f8f30373b83ffd24ab6c68"
    elsif Hardware::CPU::arm?
      url "https://github.com/davidledwards/tcolor/releases/download/v" + version + "/tcolor-" + version + "-aarch64-unix.tar.gz"
      sha256 "867c211540ed407cc5c6c3a7c9ad2f96d85180b08f498f2e27ec5da1cf2308b7"
    end
  end

  def install
    bin.install "tcolor"
  end
end
