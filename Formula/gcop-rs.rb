# typed: false
# frozen_string_literal: true

class GcopRs < Formula
  desc "AI-powered Git commit message generator and code reviewer"
  homepage "https://github.com/AptS-1547/gcop-rs"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AptS-1547/gcop-rs/releases/download/v#{version}/gcop-rs-v#{version}-macos-arm64"
      sha256 "c39cc8db3ff19a72635c22543b2bd494767932d1a3642206bf43e5c6ad8e7577"

      def install
        bin.install "gcop-rs-v#{version}-macos-arm64" => "gcop-rs"
      end
    end

    on_intel do
      url "https://github.com/AptS-1547/gcop-rs/releases/download/v#{version}/gcop-rs-v#{version}-macos-amd64"
      sha256 "d4265201a78d1904475352f5ee6e8d6e23c7286fa54e2493c03df310e88eaa42"

      def install
        bin.install "gcop-rs-v#{version}-macos-amd64" => "gcop-rs"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AptS-1547/gcop-rs/releases/download/v#{version}/gcop-rs-v#{version}-linux-arm64"
      sha256 "61abacf948fa33d1ba8f6d8fa5aec8a8409b313450d999dfa337827b95f5fe4c"

      def install
        bin.install "gcop-rs-v#{version}-linux-arm64" => "gcop-rs"
      end
    end

    on_intel do
      url "https://github.com/AptS-1547/gcop-rs/releases/download/v#{version}/gcop-rs-v#{version}-linux-amd64"
      sha256 "0f8e69886364bb90613a51554f66c8b0445cc202b9b49355f32855536d58bb98"

      def install
        bin.install "gcop-rs-v#{version}-linux-amd64" => "gcop-rs"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gcop-rs --version")
  end
end
