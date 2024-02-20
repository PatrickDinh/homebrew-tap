cask "algokit" do
  arch arm: "ARM64", intel: "X64"
  version "1.11.7"
  sha256 arm: "13998ba055cd179bf019121e46e36d5ca1da75e75878b3da3a7a006b87ce407a", intel: "b1c9021d9aa8cb91fae314712d6ff81d7910500dc71e482f9f4d9586f603788a"

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
