# typed: false
# frozen_string_literal: true

class GcopRs < Formula
  desc "AI-powered Git commit message generator and code reviewer"
  homepage "https://github.com/AptS-1547/gcop-rs"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AptS-1547/gcop-rs/releases/download/v#{version}/gcop-rs-v#{version}-macos-arm64"
      sha256 "91fcb2664fdb1c6182a46da36a1e40a80f8bc74b779e7063b74f9cef84a4e845"

      def install
        bin.install "gcop-rs-v#{version}-macos-arm64" => "gcop-rs"
      end
    end

    on_intel do
      url "https://github.com/AptS-1547/gcop-rs/releases/download/v#{version}/gcop-rs-v#{version}-macos-amd64"
      sha256 "132d92cd1cc8dbafe619c64a0f695b04768a477ecdc727146938959f4f16d069"

      def install
        bin.install "gcop-rs-v#{version}-macos-amd64" => "gcop-rs"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AptS-1547/gcop-rs/releases/download/v#{version}/gcop-rs-v#{version}-linux-arm64"
      sha256 "268440b2cdfb7e97c4522a503e3ec86ea789c894fefdf806432860647bebbe34"

      def install
        bin.install "gcop-rs-v#{version}-linux-arm64" => "gcop-rs"
      end
    end

    on_intel do
      url "https://github.com/AptS-1547/gcop-rs/releases/download/v#{version}/gcop-rs-v#{version}-linux-amd64"
      sha256 "a3cbf3c39f0ac2fab8b56843c1ea5f1d036aa474e3d8f033fe592ae7e116ee41"

      def install
        bin.install "gcop-rs-v#{version}-linux-amd64" => "gcop-rs"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gcop-rs --version")
  end
end
