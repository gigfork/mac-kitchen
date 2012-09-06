download_file = "iTerm2-#{node['iterm2']['version']}.zip" 

brew_install "automake"
brew_install "libevent"
brew_install "reattach-to-user-namespace"

run_unless_marker_file_exists("tmux-#{node['iterm2']['tmux_version']}") do
  remote_file "Download the iTerm2 archive" do
    source "http://iterm2.googlecode.com/files/#{download_file}"
    checksum node['iterm2']['checksum']
  end

  execute "Extract iTerm2's tmux source" do
    command "unzip -qo #{download_file} -d iterm2 && cd iterm2 && tar xzf tmux-for-iTerm2-#{node['iterm2']['tmux_version']}.tar.gz"
    creates "term2/tmux"
  end

  execute "Compile tmux for iTerm2" do
    command "sh -c \"sh autogen.sh && ./configure && make\" > /dev/null"
    cwd "iterm2/tmux"
  end

  execute "Install tmux for iTerm2 as the current user" do
    command "make install > /dev/null"
    cwd "iterm2/tmux"
    user WS_USER
  end
end
