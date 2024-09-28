cask "k8s-navigator" do
  version "0.0.55"
  sha256 "0217853f76ead452a6ae143a86376b5184e81d10d8b291378bffb827554d76ff"

  url "https://github.com/islam3zzat/k8s-navigator/releases/download/#{version}/k8s-navigator-#{version}-universal.dmg"
  name "K8s Navigator"
  desc "Tool for navigating Kubernetes clusters"
  homepage "https://github.com/islam3zzat/k8s-navigator"

  depends_on formula: "node"

  app "k8s-navigator.app"
end
