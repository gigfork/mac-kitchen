%w(ackrc gemrc gitignore githelpers powconfig tmux.conf).each do |source|
  dotfile = File.join(WS_HOME, ".#{source}")
  cookbook_file dotfile do
    source source
    mode "0644"
    owner WS_USER

    not_if { ::File.exists?(dotfile) }
  end
end

gitconfig_file = File.join(WS_HOME, ".gitconfig")
template  gitconfig_file do
  source "gitconfig.erb"
  mode "0644"
  owner WS_USER
  variables({
    :name => node["dotfiles"]["git_full_name"],
    :email => node["dotfiles"]["git_email"]
  })

  not_if { ::File.exists?(gitconfig_file) }
end
