# typed: false
# frozen_string_literal: true

class Shortlinker < Formula
  desc "A minimalist URL shortener service supporting HTTP 307 redirection"
  homepage "https://github.com/AptS-1547/shortlinker"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AptS-1547/shortlinker/releases/download/v0.5.0/shortlinker_v0.5.0_macos_aarch64"
      sha256 "1a10c295df1ac28a6f3bb3dfe51aac3bd6c29d16c212715df07d81f7062bf939"

      def install
        bin.install "shortlinker_v0.5.0_macos_aarch64" => "shortlinker"
      end
    end

    on_intel do
      url "https://github.com/AptS-1547/shortlinker/releases/download/v0.5.0/shortlinker_v0.5.0_macos_x86_64"
      sha256 "b8a20f32fa293ce7da64bc2412e8f29cc399056d8872d9c4be1a82310b399b20"

      def install
        bin.install "shortlinker_v0.5.0_macos_x86_64" => "shortlinker"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AptS-1547/shortlinker/releases/download/v0.5.0/shortlinker_v0.5.0_linux_aarch64"
      sha256 "de5c4fc57b4e5eceba7e83544ea8d886c394e44b6671a9b940d55a9c1cf64694"

      def install
        bin.install "shortlinker_v0.5.0_linux_aarch64" => "shortlinker"
      end
    end

    on_intel do
      url "https://github.com/AptS-1547/shortlinker/releases/download/v0.5.0/shortlinker_v0.5.0_linux_x86_64"
      sha256 "dd2650970e1b6a4e4b49ce298028dfebea95906ffafdc676bd3cff3fb9ce9844"

      def install
        bin.install "shortlinker_v0.5.0_linux_x86_64" => "shortlinker"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shortlinker --version")
  end
end
