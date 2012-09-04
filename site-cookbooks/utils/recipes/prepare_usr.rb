directory "/usr/local" do
  recursive true
  action :delete
end 

directory "/usr/local" do
  owner node['username'] 
  action :create
end
