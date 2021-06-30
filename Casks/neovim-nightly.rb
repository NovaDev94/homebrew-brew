cask "neovim-nightly" do
  version :latest
  sha256 :no_check

  url "https://github.com/neovim/neovim/releases/download/nightly/nvim-macos.tar.gz"
  name "Neovim Nightly"
  homepage "https://neovim.io/"

  livecheck do
    url "https://github.com/neovim/neovim/releases"
    strategy :page_match
    regex(/NVIM v(\d+\.\d+\.\d+-dev\+\d+-\w+)/i)
  end

  binary "nvim-osx64/bin/nvim"
  manpage "nvim-osx64/share/man/man1/nvim.1"
end
