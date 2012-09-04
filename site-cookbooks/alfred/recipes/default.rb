pivotal_workstation_package "Alfred" do
  volumes_dir "Alfred.app"
  source "http://media.alfredapp.com/alfred_#{node['alfred']['version']}.dmg"
end
