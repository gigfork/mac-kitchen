brew_install "zsh"

execute "Make Zsh the default shell" do
  command "chsh -s /usr/local/bin/zsh #{WS_USER}"
end
