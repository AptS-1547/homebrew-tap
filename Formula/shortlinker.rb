# typed: false
# frozen_string_literal: true

class Shortlinker < Formula
  desc "A minimalist URL shortener service supporting HTTP 307 redirection"
  homepage "https://github.com/AptS-1547/shortlinker"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AptS-1547/shortlinker/releases/download/v0.4.2/shortlinker_v0.4.2_macos_aarch64"
      sha256 "4af5d77a5a19de758ebe7ad8933439e86adf780e349bd5429c5013ed91c77aad"

      def install
        bin.install "shortlinker_v0.4.2_macos_aarch64" => "shortlinker"
      end
    end

    on_intel do
      url "https://github.com/AptS-1547/shortlinker/releases/download/v0.4.2/shortlinker_v0.4.2_macos_x86_64"
      sha256 "20b5533b62568a0f2b6a418cfd2b1eef6a91059734af9a9f75f972c43672512e"

      def install
        bin.install "shortlinker_v0.4.2_macos_x86_64" => "shortlinker"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AptS-1547/shortlinker/releases/download/v0.4.2/shortlinker_v0.4.2_linux_aarch64"
      sha256 "2408c6ef8609b56faea86e50219e36f8ed1126b348626cd16ba25ea68d048d4a"

      def install
        bin.install "shortlinker_v0.4.2_linux_aarch64" => "shortlinker"
      end
    end

    on_intel do
      url "https://github.com/AptS-1547/shortlinker/releases/download/v0.4.2/shortlinker_v0.4.2_linux_x86_64"
      sha256 "ac59090b034eaebb4b7ce823185e2f0db8d53e05a75fdcdbd971663d6e27335b"

      def install
        bin.install "shortlinker_v0.4.2_linux_x86_64" => "shortlinker"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shortlinker --version")
  end
end
