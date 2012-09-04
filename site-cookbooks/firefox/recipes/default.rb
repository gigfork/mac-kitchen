pivotal_workstation_package "Firefox" do
  source "http://releases.mozilla.org/pub/mozilla.org/firefox/releases/#{node['firefox']['version']}/mac/en-US/Firefox%20#{node['firefox']['version']}.dmg"
  volumes_dir "Firefox"
end
