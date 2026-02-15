cask "dns-orchestrator" do
  version "1.10.0"

  on_arm do
    sha256 "adecfbabd19a356b9bad2f1970e64b4126592c6f957f38c259948cd818216f13"
    url "https://github.com/AptS-1547/dns-orchestrator/releases/download/v#{version}/DNS.Orchestrator_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "1ef241b033d3ead673c12a88f7a34e8213190d053604a3ac8c474629c4a25c48"
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
