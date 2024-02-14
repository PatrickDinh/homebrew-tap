cask "algokit" do
  arch arm: "ARM64", intel: "X64"
  version "1.12.18"
  sha256 arm: "c79b7be414482e5175a73eb1a4c63531ef2ffb54fd72c69edf37c99f20d97c68", intel: "1375ab57500266757dee70722d057c57f450a2c81f34efdcce38e15bd7a570e3"

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
