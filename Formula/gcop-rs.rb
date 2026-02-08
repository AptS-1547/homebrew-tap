# typed: false
# frozen_string_literal: true

class GcopRs < Formula
  desc "AI-powered Git commit message generator and code reviewer"
  homepage "https://github.com/AptS-1547/gcop-rs"
  version "0.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AptS-1547/gcop-rs/releases/download/v#{version}/gcop-rs-v#{version}-macos-arm64"
      sha256 "1a1820a85a44a8c9cd1a1090c95ca743edb0c951975cb63e9ee2afc425efe2f6"

      def install
        bin.install "gcop-rs-v#{version}-macos-arm64" => "gcop-rs"
      end
    end

    on_intel do
      url "https://github.com/AptS-1547/gcop-rs/releases/download/v#{version}/gcop-rs-v#{version}-macos-amd64"
      sha256 "25db9873ce18168b79ffbc62f28c067534fb26446c9efb9ba8e4b88566b975dd"

      def install
        bin.install "gcop-rs-v#{version}-macos-amd64" => "gcop-rs"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AptS-1547/gcop-rs/releases/download/v#{version}/gcop-rs-v#{version}-linux-arm64"
      sha256 "c37b87e3cfe55ddabcac9cd48616d21ae257ff4fe2a57676700e6eae06c5e4ea"

      def install
        bin.install "gcop-rs-v#{version}-linux-arm64" => "gcop-rs"
      end
    end

    on_intel do
      url "https://github.com/AptS-1547/gcop-rs/releases/download/v#{version}/gcop-rs-v#{version}-linux-amd64"
      sha256 "8e8199b195a0ca6af766aaa5b6cd63b6bf9b09ac1cf64c6fa06b43242c558482"

      def install
        bin.install "gcop-rs-v#{version}-linux-amd64" => "gcop-rs"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gcop-rs --version")
  end
end
