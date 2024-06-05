cask "k8s-navigator" do
  version "0.0.51"
  sha256 "86b4c6c0c5834554192c65db8f43ba1bb8adf968b28f99c794e9ff0b0e52928c"

  url "https://github.com/islam3zzat/k8s-navigator/releases/download/#{version}/k8s-navigator-#{version}-universal.dmg"
  name "K8s Navigator"
  desc "Tool for navigating Kubernetes clusters"
  homepage "https://github.com/islam3zzat/k8s-navigator"

  depends_on formula: "node"

  app "k8s-navigator.app"
end
