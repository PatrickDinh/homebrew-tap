cask "algokit" do
  arch arm: "ARM64", intel: "X64"
  version "1.11.9"
  sha256 arm: "8eae46249ae308849188ffdb5d7d27635ae93907d917a622ecd919304facfc05", intel: "ef1e51822894bd10faf91e3cc29d96b6d98d50e02ddb74e6cfb3fc0b30a9248e"

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
