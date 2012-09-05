#
# Cookbook Name:: iterm2
# Recipe:: default
#
# Copyright 2011-2012, Joshua Timberman
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
download_file = "iTerm2-#{node['iterm2']['version']}" 

utils_app download_file do 
  app "iTerm"
  source "http://iterm2.googlecode.com/files/#{download_file}.zip"
  checksum node['iterm2']['checksum']
end

cookbook_file "#{WS_LIBRARY}/Preferences/com.googlecode.iterm2.plist" do
  source "com.googlecode.iterm2.plist"
  user WS_USER
  mode "0600"
end

include_recipe "iterm2::tmux" if node['iterm2']['tmux_enabled']
