cask "algokit" do
  arch arm: "ARM64", intel: "X64"
  version "1.12.12"
  sha256 arm: "09a548ccf75b8e832ade03990a9fcac04a6bb819b8419f3020b43614346b84eb", intel: "c79d6972135839606059116d6da3d925cf8e531bbd2cbc8a3663896ea0542e01"

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
