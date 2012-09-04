pivotal_workstation_package "Dropbox" do
  volumes_dir "Dropbox Installer"
  source "https://dl-web.dropbox.com/u/17/Dropbox%20#{node['dropbox']['version']}.dmg"
end
