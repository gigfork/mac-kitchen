node['git_repos'].each do |repo, options|
  raise "You must specify the target path under your user's home for each repo" unless options["path"]
  full_path = File.join(WS_HOME, options["path"])

  unless File.exists?(full_path)
    execute "Clone #{repo}" do
      command "git clone #{repo} #{full_path} > /dev/null"
      user WS_USER
      notifies(:run, "execute[Finalize #{repo}]", :immediately) if options["finalize"]
    end

    execute "Finalize #{repo}" do
      command "#{options["finalize"]} > /dev/null"
      cwd full_path
      user WS_USER
      action :nothing
    end
  end
end
