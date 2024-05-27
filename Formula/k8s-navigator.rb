class K8sNavigator < Formula
  desc "K8s Navigator is a tool for navigating Kubernetes clusters"
  homepage "https://github.com/islam3zzat/k8s-navigator"
  url "https://storage.googleapis.com/k8s-navigator-bucket/k8s-navigator-darwin-arm64-0.0.2.zip"
  sha256 "e221366ea6c9aa4a15129acda3ed08c92960a388dca45c9c95a31ec2097763bf"
  license "MIT"

  depends_on "node"

  def install
    # Extract the .app bundle
    system "unzip", cached_download, "-d", "extracted"
    # Install the entire .app bundle in the prefix directory
    prefix.install "extracted/k8s-navigator.app"
    # Install the entitlements file
    (share/"k8s-navigator").install resource("entitlements")
    # Create a symlink to the main executable
    bin.install_symlink prefix/"k8s-navigator.app/Contents/MacOS/k8s-navigator" => "k8s-navigator"
  end


  def caveats
    <<~EOS
      The k8s-navigator app bundle has been installed and signed in:
        #{opt_prefix}/k8s-navigator.app

      To add the app to your Applications folder, you need to create a symlink manually:
        sudo ln -s #{opt_prefix}/k8s-navigator.app /Applications/k8s-navigator.app

      To add the executable to your PATH, you can add the following line to your shell configuration:
        echo 'export PATH="#{opt_prefix}/k8s-navigator.app/Contents/MacOS:$PATH"' >> ~/.zshrc

        After that, you can run the app by typing:
        k8s-navigator

        or, to run it in the background:

        k8s-navigator &
    EOS
  end

  test do
    system "#{bin}/k8s-navigator", "--version"
  end
end
