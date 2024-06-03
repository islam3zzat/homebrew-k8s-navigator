cask "k8s-navigator" do
  version "0.0.43"
  sha256 "97ea85aac44c700b73caf9a20d148c9519e295d6afaf992fd262a6af4a2795cd"

  url "https://github.com/islam3zzat/k8s-navigator/releases/download/#{version}/k8s-navigator-#{version}-universal.dmg"
  name "K8s Navigator"
  desc "Tool for navigating Kubernetes clusters"
  homepage "https://github.com/islam3zzat/k8s-navigator"

  depends_on formula: "node"

  app "k8s-navigator.app"
end
