chef_root = File.expand_path(File.join(File.dirname(__FILE__), '..'))
state_root = File.expand_path('~/.chef/state')

data_bag_path   File.join(chef_root, 'data_bags')
cookbook_path   %w(site-cookbooks cookbooks).map { |d| File.join(chef_root, d) }
role_path       File.join(chef_root, 'roles')
file_cache_path File.join(state_root, 'cache')
file_backup_path File.join(state_root, 'backup')

cache_type 'BasicFile'
cache_options { path: File.join(state_root, 'cache', 'checksums'), skip_expires: true }

log_level :info
verbose_logging false
