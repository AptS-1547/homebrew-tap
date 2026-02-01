# typed: false
# frozen_string_literal: true

class Shortlinker < Formula
  desc "A minimalist URL shortener service supporting HTTP 307 redirection"
  homepage "https://github.com/AptS-1547/shortlinker"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AptS-1547/shortlinker/releases/download/v0.4.1/shortlinker_v0.4.1_macos_aarch64"
      sha256 "a9d84c095d436592477eea3d6725ad3fd61523026a647b5cb9dc0a2c1a24efeb"

      def install
        bin.install "shortlinker_v0.4.1_macos_aarch64" => "shortlinker"
      end
    end

    on_intel do
      url "https://github.com/AptS-1547/shortlinker/releases/download/v0.4.1/shortlinker_v0.4.1_macos_x86_64"
      sha256 "79e51fd780ab6d17a82469727271530e65a391a1cee575a7cbb09e4ca4c63638"

      def install
        bin.install "shortlinker_v0.4.1_macos_x86_64" => "shortlinker"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AptS-1547/shortlinker/releases/download/v0.4.1/shortlinker_v0.4.1_linux_aarch64"
      sha256 "c6d0c6408339db123120c146f906a993d30d5533ebb6bf06d80810f2ceed6226"

      def install
        bin.install "shortlinker_v0.4.1_linux_aarch64" => "shortlinker"
      end
    end

    on_intel do
      url "https://github.com/AptS-1547/shortlinker/releases/download/v0.4.1/shortlinker_v0.4.1_linux_x86_64"
      sha256 "c29129207baf9e2a65097fb634ea3366777a41f03a8624ae8a1704bf6fa8f964"

      def install
        bin.install "shortlinker_v0.4.1_linux_x86_64" => "shortlinker"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shortlinker --version")
  end
end
