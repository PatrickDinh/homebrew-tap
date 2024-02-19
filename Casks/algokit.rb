cask "algokit" do
  arch arm: "ARM64", intel: "X64"
  version "1.11.6"
  sha256 arm: "05bd20fc6592cad207165b3ee707dbd3990d69bfdaca5263faffb17a029c1c1f", intel: "731e890340131e9eac3dc65031e9e9ca3c20496d527a1a1c7e4f1740a35e0235"

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
