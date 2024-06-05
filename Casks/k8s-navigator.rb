cask "k8s-navigator" do
  version "0.0.49"
  sha256 "6d2bb36d5c0b9c5167913b6bbfe5826979b90e1f214f2ca3471b1c5bcfe81d42"

  url "https://github.com/islam3zzat/k8s-navigator/releases/download/#{version}/k8s-navigator-#{version}-universal.dmg"
  name "K8s Navigator"
  desc "Tool for navigating Kubernetes clusters"
  homepage "https://github.com/islam3zzat/k8s-navigator"

  depends_on formula: "node"

  app "k8s-navigator.app"
end
