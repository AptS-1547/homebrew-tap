# typed: false
# frozen_string_literal: true

class GcopRs < Formula
  desc "AI-powered Git commit message generator and code reviewer"
  homepage "https://github.com/AptS-1547/gcop-rs"
  version "0.12.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AptS-1547/gcop-rs/releases/download/v#{version}/gcop-rs-v#{version}-macos-arm64"
      sha256 "febb70748386fb53762735c652c60c6002519ee58b30951456529482db7a58fb"

      def install
        bin.install "gcop-rs-v#{version}-macos-arm64" => "gcop-rs"
      end
    end

    on_intel do
      url "https://github.com/AptS-1547/gcop-rs/releases/download/v#{version}/gcop-rs-v#{version}-macos-amd64"
      sha256 "571ea63e422cce1bc7a843bcd0c95b5bcc2765b12ab548d664b31c186eb94df1"

      def install
        bin.install "gcop-rs-v#{version}-macos-amd64" => "gcop-rs"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AptS-1547/gcop-rs/releases/download/v#{version}/gcop-rs-v#{version}-linux-arm64"
      sha256 "80682c6e37ad76bfa80e88e6e5eb93b5803a8675123ee9ca1d5a013edd4a226d"

      def install
        bin.install "gcop-rs-v#{version}-linux-arm64" => "gcop-rs"
      end
    end

    on_intel do
      url "https://github.com/AptS-1547/gcop-rs/releases/download/v#{version}/gcop-rs-v#{version}-linux-amd64"
      sha256 "24304f7d8e671cbcab577e1da923077dde4b92b0e27f66ee4d4bd1433386c4c4"

      def install
        bin.install "gcop-rs-v#{version}-linux-amd64" => "gcop-rs"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gcop-rs --version")
  end
end
