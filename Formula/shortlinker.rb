# typed: false
# frozen_string_literal: true

class Shortlinker < Formula
  desc "A minimalist URL shortener service supporting HTTP 307 redirection"
  homepage "https://github.com/AptS-1547/shortlinker"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AptS-1547/shortlinker/releases/download/v0.3.0/shortlinker_v0.3.0_macos_aarch64"
      sha256 "b9b528efa2fdbb71afc678a370e10818f04c9dccf95d39a1db38ef9e81fa32af"

      def install
        bin.install "shortlinker_v0.3.0_macos_aarch64" => "shortlinker"
      end
    end

    on_intel do
      url "https://github.com/AptS-1547/shortlinker/releases/download/v0.3.0/shortlinker_v0.3.0_macos_x86_64"
      sha256 "43b6cca6d099adf2e8f38ca2d03bcf67d04796d2fe6015d357ef7a3b4656f2aa"

      def install
        bin.install "shortlinker_v0.3.0_macos_x86_64" => "shortlinker"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AptS-1547/shortlinker/releases/download/v0.3.0/shortlinker_v0.3.0_linux_aarch64"
      sha256 "07a9c05d67b2ff008746cea06c75466dad630a94b54c728b707d0e971ccea3e8"

      def install
        bin.install "shortlinker_v0.3.0_linux_aarch64" => "shortlinker"
      end
    end

    on_intel do
      url "https://github.com/AptS-1547/shortlinker/releases/download/v0.3.0/shortlinker_v0.3.0_linux_x86_64"
      sha256 "cd2cc4049735423eb0aeb08896fc5d3ef3bada3f0bd897bfeb042987536794e4"

      def install
        bin.install "shortlinker_v0.3.0_linux_x86_64" => "shortlinker"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shortlinker --version")
  end
end
