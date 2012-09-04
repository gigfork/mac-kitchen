#
# Cookbook Name:: chrome
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
pivotal_workstation_package "Google Chrome" do
  dmg_name "googlechrome"
  source "https://dl-ssl.google.com/chrome/mac/beta/googlechrome.dmg"
end
