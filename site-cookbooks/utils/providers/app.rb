action :install do
  path = new_resource.path || "/Applications"
  app_file = "#{new_resource.app || new_resource.download_file}.app"

  remote_file "#{new_resource.download_file}.zip" do
    checksum new_resource.checksum if new_resource.checksum
    source new_resource.source
    owner WS_USER
  end

  execute "unzip #{new_resource.download_file}" do
    command "unzip -o #{new_resource.download_file}.zip -d /tmp && mv #{::File.join("/tmp", app_file)} #{path}"
    user WS_USER
    not_if { ::File.exists?(::File.join(path, app_file)) }
  end
end
