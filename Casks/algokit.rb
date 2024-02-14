cask "algokit" do
  arch arm: "ARM64", intel: "X64"
  version "1.12.21"
  sha256 arm: "8c54f210e4bfa7751f24336342d32f620d77a0b687c8397a24428f1c09cf5796", intel: "4b300258a6ac5453ac15d0412798b814ecf5583ab46701bad00d7911f6c90c77"

  url "https://github.com/PatrickDinh/algokit-cli/releases/download/v#{version}/algokit-v#{version}-macOS-#{arch}-py3.12.zip"
  name "algokit"
  desc "Algorand development kit command-line interface"
  homepage "https://github.com/PatrickDinh/algokit-cli"

  binary "#{staged_path}/#{token}"

  postflight do
    set_permissions "#{staged_path}/#{token}", "0755"
  end

  uninstall delete: "/usr/local/bin/#{token}"
end
