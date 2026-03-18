# typed: false
# frozen_string_literal: true

class Shortlinker < Formula
  desc "A minimalist URL shortener service supporting HTTP 307 redirection"
  homepage "https://github.com/AptS-1547/shortlinker"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AptS-1547/shortlinker/releases/download/v0.5.1/shortlinker_v0.5.1_macos_aarch64"
      sha256 "388162bc9d3a59d12f8875a9058cf122238906ae2103cd1d3c2f1c288f8cfafa"

      def install
        bin.install "shortlinker_v0.5.1_macos_aarch64" => "shortlinker"
      end
    end

    on_intel do
      url "https://github.com/AptS-1547/shortlinker/releases/download/v0.5.1/shortlinker_v0.5.1_macos_x86_64"
      sha256 "7f6c5e60ea5d096b36a06389ce3f4d64a58c65b082ff13fae132433661d36199"

      def install
        bin.install "shortlinker_v0.5.1_macos_x86_64" => "shortlinker"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AptS-1547/shortlinker/releases/download/v0.5.1/shortlinker_v0.5.1_linux_aarch64"
      sha256 "019122b029ec0da8aff5315a44e57b72b3e38632d59282ce8b92e0015d126ca0"

      def install
        bin.install "shortlinker_v0.5.1_linux_aarch64" => "shortlinker"
      end
    end

    on_intel do
      url "https://github.com/AptS-1547/shortlinker/releases/download/v0.5.1/shortlinker_v0.5.1_linux_x86_64"
      sha256 "2635ae0937e06e6e0652e974688af2aa78e8bf4d4ef744ba3eeadcf808be1fdf"

      def install
        bin.install "shortlinker_v0.5.1_linux_x86_64" => "shortlinker"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shortlinker --version")
  end
end
