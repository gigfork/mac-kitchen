node['git_repos'].each do |repo, options|
  raise "You must specify the target path under your user's home for each repo" unless options["path"]
  full_path = File.join(WS_HOME, options["path"])

  git "Clone #{repo}" do
    repository repo
    destination full_path
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
