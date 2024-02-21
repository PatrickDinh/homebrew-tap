cask "algokit" do
  arch arm: "ARM64", intel: "X64"
  version "1.11.12"
  sha256 arm: "84a01670c34343a721603ab51227a9064f44b2cc79ac2a234326295f44230dd8", intel: "2acfb4541b4c20871b56ce0109548d12fba9fd5564bbe6f841e2ae1bfde091b9"

  url "https://github.com/PatrickDinh/algokit-cli/releases/download/v#{version}/algokit-v#{version}-macOS-#{arch}-py3.12.tar.gz"
  name "algokit"
  desc "Algorand development kit command-line interface"
  homepage "https://github.com/PatrickDinh/algokit-cli"

  binary "#{staged_path}/#{token}"

  postflight do
    set_permissions "#{staged_path}/#{token}", "0755"
  end

  uninstall delete: "/usr/local/bin/#{token}"
end
