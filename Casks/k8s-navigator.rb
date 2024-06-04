cask "k8s-navigator" do
  version "0.0.46"
  sha256 "0800b1fb8d2760b68835141f37ecc58bab05e5766186e078d344587555eb91cf"

  url "https://github.com/islam3zzat/k8s-navigator/releases/download/#{version}/k8s-navigator-#{version}-universal.dmg"
  name "K8s Navigator"
  desc "Tool for navigating Kubernetes clusters"
  homepage "https://github.com/islam3zzat/k8s-navigator"

  depends_on formula: "node"

  app "k8s-navigator.app"
end
