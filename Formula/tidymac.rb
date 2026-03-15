class Tidymac < Formula
  desc "A lightweight TUI system cleaner for macOS"
  homepage "https://github.com/therealmazin/tidymac"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/therealmazin/tidymac/releases/download/v#{version}/tidymac-v#{version}-darwin-arm64.tar.gz"
      sha256 "48a0ccc0590edae81f4c81ff6e6b8c7f496368c2c655ffbbedb42e8f0b252ed8"
    elsif Hardware::CPU.intel?
      url "https://github.com/therealmazin/tidymac/releases/download/v#{version}/tidymac-v#{version}-darwin-x64.tar.gz"
      sha256 "3c02c32fb72eb388c1729d9cc4c808cfd9876d27245ac8d98fcbe81b3c73bae2"
    end
  end

  def install
    bin.install "tidymac"
  end

  test do
    assert_match "tidymac", shell_output("#{bin}/tidymac --help 2>&1", 1)
  end
end
