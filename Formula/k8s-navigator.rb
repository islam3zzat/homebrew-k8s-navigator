class K8sNavigator < Formula
  desc "K8s Navigator is a tool for navigating Kubernetes clusters"
  homepage "https://github.com/yourusername/k8s-navigator"
  url "https://storage.googleapis.com/k8s-navigator-bucket/k8s-navigator-darwin-arm64-2.0.0.zip"
  sha256 "d4a5370646df0b5e6171c1ea4daf53aa7503e931d12c6b86cb87db36dcde2cd0"
  license "MIT"

  depends_on "node"

  def install
    # Extract the .app bundle
    system "unzip", cached_download, "-d", "extracted"
    # Use prefix to install within the Homebrew managed path temporarily
    app_dir = prefix/"k8s-navigator-app"
    mkdir_p app_dir
    cp_r "extracted/k8s-navigator.app", app_dir

    # Create a symlink to the main executable
    bin.install_symlink app_dir/"k8s-navigator.app/Contents/MacOS/k8s-navigator" => "k8s-navigator"
  end

  def post_install
    # Move the .app bundle to the user's home directory
    home_app_dir = File.expand_path("~/k8s-navigator-app")
    mkdir_p home_app_dir
    cp_r prefix/"k8s-navigator-app/k8s-navigator.app", home_app_dir

    # Inform the user
    ohai "The k8s-navigator app has been moved to your home directory at:"
    ohai "#{home_app_dir}/k8s-navigator.app"
  end

  def caveats
    <<~EOS
      The k8s-navigator app bundle has been installed in your home directory at:
        ~/k8s-navigator-app/k8s-navigator.app
    EOS
  end

  test do
    system "#{bin}/k8s-navigator", "--version"
  end
end
