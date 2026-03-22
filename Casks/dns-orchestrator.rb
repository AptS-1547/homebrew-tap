cask "dns-orchestrator" do
  version "1.10.1"

  on_arm do
    sha256 "f15565421e49aa477c8ef102506efe47626ddfb126b4fcdc59632e9912752a91"
    url "https://github.com/AptS-1547/dns-orchestrator/releases/download/v#{version}/DNS.Orchestrator_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "68ebe64b44cf55e2124682db4dfbcbab153d5a8a5424852b09d1607537f6cf0b"
    url "https://github.com/AptS-1547/dns-orchestrator/releases/download/v#{version}/DNS.Orchestrator_#{version}_x64.dmg"
  end

  name "DNS Orchestrator"
  desc "DNS configuration management tool"
  homepage "https://github.com/AptS-1547/dns-orchestrator"

  app "DNS Orchestrator.app"

  zap trash: [
    "~/Library/Application Support/net.esaps.dns-orchestrator",
    "~/Library/Caches/net.esaps.dns-orchestrator",
    "~/Library/Preferences/net.esaps.dns-orchestrator.plist",
  ]
end
