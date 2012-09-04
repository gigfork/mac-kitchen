# THIS RECIPE IS CURRENTLY **NOT WORKING**
#
pow_installer_path = node[:pow][:install_script_path]

remote_file "Get the pow! install script" do
  source "http://get.pow.cx"
  path pow_installer_path
  mode "0755"
end

execute "Install pow!" do
  command pow_installer_path
end

execute "Stop the pow! server" do
  command "npm --global run-script pow stop"
end

execute "Make pow! available for #{WS_USER}" do
  command "cp ~/Library/LaunchAgents/cx.pow.powd.plist #{WS_LIBRARY}/LaunchAgents"
  user WS_USER
end

hosts_path = "#{WS_LIBRARY}/Application Support/Pow/Hosts"

directory "Create pow!'s hosts directory structure for #{WS_USER}" do
  path hosts_path
  recursive true
  owner WS_USER
end

link "Link pow!'s hosts directory to #{WS_USER}'s home directory" do
  target_file "#{WS_HOME}/.pow"
  to hosts_path
  owner WS_USER
end

execute "Start #{WS_USER}'s pow!" do
  command "npm --global run-script pow start"
  user WS_USER
end
