# typed: false
# frozen_string_literal: true

class GcopRs < Formula
  desc "AI-powered Git commit message generator and code reviewer"
  homepage "https://github.com/AptS-1547/gcop-rs"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AptS-1547/gcop-rs/releases/download/v#{version}/gcop-rs-v#{version}-macos-arm64"
      sha256 "0072daa8c003cb11679469df3d00608a3a3001d749782343bdc2920dc653ffdc"

      def install
        bin.install "gcop-rs-v#{version}-macos-arm64" => "gcop-rs"
      end
    end

    on_intel do
      url "https://github.com/AptS-1547/gcop-rs/releases/download/v#{version}/gcop-rs-v#{version}-macos-amd64"
      sha256 "b3260c1d600f7abaa8698e8fa3883e203ba27268b50887a2e809fe57235973ad"

      def install
        bin.install "gcop-rs-v#{version}-macos-amd64" => "gcop-rs"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AptS-1547/gcop-rs/releases/download/v#{version}/gcop-rs-v#{version}-linux-arm64"
      sha256 "5417c4202f14fa972aad7d1ec52b03cd7678c7de8d2f5e3376878f7d64a8304e"

      def install
        bin.install "gcop-rs-v#{version}-linux-arm64" => "gcop-rs"
      end
    end

    on_intel do
      url "https://github.com/AptS-1547/gcop-rs/releases/download/v#{version}/gcop-rs-v#{version}-linux-amd64"
      sha256 "d7851d371105f9441a39dba557bd50943a404f9d876d9e47ef3a495fe731ace7"

      def install
        bin.install "gcop-rs-v#{version}-linux-amd64" => "gcop-rs"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gcop-rs --version")
  end
end
