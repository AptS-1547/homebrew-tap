# typed: false
# frozen_string_literal: true

class CarGo < Formula
  desc "cargo-style output for the Go toolchain."
  homepage "https://github.com/AptS-1547/car-go"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AptS-1547/car-go/releases/download/v#{version}/car-go-v#{version}-macos-arm64"
      sha256 "0e739709fab66bf839aacd3852927623520035c659db274b00758563d6267951"

      def install
        bin.install "car-go-v#{version}-macos-arm64" => "car-go"
      end
    end

    on_intel do
      url "https://github.com/AptS-1547/car-go/releases/download/v#{version}/car-go-v#{version}-macos-amd64"
      sha256 "2e3fd5b8359441555131878f97b4e7f8d49a91463e7c3af507da16cbb17e8f68"

      def install
        bin.install "car-go-v#{version}-macos-amd64" => "car-go"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AptS-1547/car-go/releases/download/v#{version}/car-go-v#{version}-linux-arm64"
      sha256 "9a262b56bf31efb98fa1681693188cc3662d0ba75cd20d8461e21964ad03973e"

      def install
        bin.install "car-go-v#{version}-linux-arm64" => "car-go"
      end
    end

    on_intel do
      url "https://github.com/AptS-1547/car-go/releases/download/v#{version}/car-go-v#{version}-linux-amd64"
      sha256 "1796b6a0821c2e116e2b62d0ee0ed3d08a8d51aaf09f29dc3e521c03d8245aa9"

      def install
        bin.install "car-go-v#{version}-linux-amd64" => "car-go"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/car-go --version")
  end
end
