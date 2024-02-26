cask "algokit" do
  path arm: "dist/algokit-2.0.6-macos_arm64.tar.gz", intel: "dist/algokit-2.0.6-macos_x64.tar.gz"
  version "2.0.6"
  sha256 arm: "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5", intel: "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

  url "https://github.com/PatrickDinh/algokit-cli/releases/download/#{version}/#{path}"
  name "algokit"
  desc "Algorand development kit command-line interface"
  homepage "https://github.com/PatrickDinh/algokit-cli"

  binary "#{staged_path}/#{token}"

  postflight do
    set_permissions "#{staged_path}/#{token}", "0755"
  end

  uninstall delete: "/usr/local/bin/#{token}"
end
