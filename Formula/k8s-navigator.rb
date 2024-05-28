class K8sNavigator < Formula
  desc "K8s Navigator is a tool for navigating Kubernetes clusters"
  homepage "https://github.com/islam3zzat/k8s-navigator"
  url "https://storage.googleapis.com/k8s-navigator-bucket/k8s-navigator-darwin-arm64-0.0.3.zip"
  sha256 "5dae9b0fc459e11c9e933d75886ce96a7f0984fe57377a18040c85c33102dab1"
  license "MIT"

  depends_on "node"

  def install
    # Extract the .app bundle
    system "unzip", cached_download, "-d", "extracted"
    # Create Applications directory if it doesn't exist
    applications_dir = "/Applications/k8s-navigator.app"
    system "mkdir", "-p", applications_dir
    # Install the entire .app bundle in the Applications directory
    system "cp", "-r", "extracted/k8s-navigator.app", applications_dir
    # Create a symlink to the main executable
    bin.install_symlink "#{applications_dir}/Contents/MacOS/k8s-navigator" => "k8s-navigator"
  end

  def caveats
    <<~EOS
    The k8s-navigator app bundle has been installed in:
    /Applications/k8s-navigator.app

    To add the executable to your PATH, you can add the following line to your shell configuration:
      echo 'export PATH="/Applications/k8s-navigator.app/Contents/MacOS:$PATH"' >> ~/.zshrc

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
