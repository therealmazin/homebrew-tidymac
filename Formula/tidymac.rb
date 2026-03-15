class Tidymac < Formula
  desc "A lightweight TUI system cleaner for macOS"
  homepage "https://github.com/therealmazin/tidymac"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/therealmazin/tidymac/releases/download/v#{version}/tidymac-v#{version}-darwin-arm64.tar.gz"
      sha256 "51a3c95ca1ca0e30e369e430eef3101dd62e8e0b0dd2ccaf8d04f5be5cd0a0c6"
    elsif Hardware::CPU.intel?
      url "https://github.com/therealmazin/tidymac/releases/download/v#{version}/tidymac-v#{version}-darwin-x64.tar.gz"
      sha256 "00fa6cf0c1a323836b9a2aedbf449ac620dbd61793e7ade808a9e7b31e32d7b0"
    end
  end

  def install
    bin.install "tidymac"
  end

  test do
    assert_match "tidymac", shell_output("#{bin}/tidymac --help 2>&1", 1)
  end
end
