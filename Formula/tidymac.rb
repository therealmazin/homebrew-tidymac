class Tidymac < Formula
  desc "A lightweight TUI system cleaner for macOS"
  homepage "https://github.com/therealmazin/tidymac"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/therealmazin/tidymac/releases/download/v#{version}/tidymac-v#{version}-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER_ARM64"
    elsif Hardware::CPU.intel?
      url "https://github.com/therealmazin/tidymac/releases/download/v#{version}/tidymac-v#{version}-darwin-x64.tar.gz"
      sha256 "PLACEHOLDER_X64"
    end
  end

  def install
    bin.install "tidymac"
  end

  test do
    assert_match "tidymac", shell_output("#{bin}/tidymac --help 2>&1", 1)
  end
end
