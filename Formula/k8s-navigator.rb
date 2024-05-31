class K8sNavigator < Formula
  desc "K8s Navigator is a tool for navigating Kubernetes clusters"
  homepage "https://github.com/islam3zzat/k8s-navigator"
  url "https://storage.googleapis.com/k8s-navigator-bucket/k8s-navigator-darwin-universal-0.0.399.zip"
  sha256 "6dbe78bfb1961b25bceb034a60d7b46cafbabe4d5198155c32d78e53346f79c2"
  license "MIT"

  depends_on "node"

  def install
    system "unzip", cached_download, "-d", "extracted"
    # Copy the .app bundle to the Applications directory using rsync
    prefix.install "extracted/k8s-navigator.app"
  end

  def caveats
    <<~EOS
    k8s-navigator.app has been installed to:
    #{opt_prefix}/k8s-navigator.app

  To launch k8s-navigator, you can use the following command:
    open #{opt_prefix}/k8s-navigator.app

  Note: Moving the app to the Applications folder requires administrator privileges.
  If you want to move k8s-navigator to your Applications folder, use the following command:
    sudo cp -r #{opt_prefix}/k8s-navigator.app /Applications


  To add k8s-navigator to your PATH, you can use the command:
    echo 'export PATH="/Applications/k8s-navigator.app/Contents/MacOS:$PATH"' >> ~/.zshrc
EOS
  end

  test do
    system "#{bin}/k8s-navigator", "--version"
  end
end
