cask "k8s-navigator" do
  version "0.0.48"
  sha256 "908ea8f8b3787f11230f357569b17729dff2ae3f73c630335ab51b985d738d79"

  url "https://github.com/islam3zzat/k8s-navigator/releases/download/#{version}/k8s-navigator-#{version}-universal.dmg"
  name "K8s Navigator"
  desc "Tool for navigating Kubernetes clusters"
  homepage "https://github.com/islam3zzat/k8s-navigator"

  depends_on formula: "node"

  app "k8s-navigator.app"
end
