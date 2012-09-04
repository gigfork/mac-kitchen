{ 'vimfiles' => '.vim', 'zshfiles' => '.zshfiles' }.each do |repo, dir|
  full_path = File.join(WS_HOME, dir)

  git "Clone #{repo}" do
    repository "git://github.com/croaker/#{repo}.git"
    destination full_path
    user WS_USER
  end
  
  execute "Run the rake task for #{repo}" do
    command "rake"
    cwd full_path
    user WS_USER
  end
end
