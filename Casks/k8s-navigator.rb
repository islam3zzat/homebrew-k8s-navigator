cask "k8s-navigator" do
  version "0.0.55"
  sha256 "8c2b5051806d89ddc49d99224ec7e82f0c37f5b34f09fc713b6159623ecee617"

  url "https://github.com/islam3zzat/k8s-navigator/releases/download/#{version}/k8s-navigator-#{version}-universal.dmg"
  name "K8s Navigator"
  desc "Tool for navigating Kubernetes clusters"
  homepage "https://github.com/islam3zzat/k8s-navigator"

  depends_on formula: "node"

  app "k8s-navigator.app"
end
