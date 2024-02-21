cask "algokit" do
  arch arm: "ARM64", intel: "X64"
  version "1.11.13"
  sha256 arm: "727d6a47ef50b22251f8f533e1360af4b5839396b0bf5d16aea9cda2b2d6cd05", intel: "5e578bcff34036c610c85005dc876b18fe7d8da2fe33ea5907697e599eb3595f"

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
