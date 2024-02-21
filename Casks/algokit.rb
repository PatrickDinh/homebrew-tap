cask "algokit" do
  arch arm: "ARM64", intel: "X64"
  version "1.11.11"
  sha256 arm: "d0418d595a38327680df51fc9a9141e1c6f5d60db239dcfe3044ad0a63e6cf71", intel: "c412c5a7cc40f31ca524f924ac2e1bb896c184d76d94c51bf28719722cbfbf76"

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
