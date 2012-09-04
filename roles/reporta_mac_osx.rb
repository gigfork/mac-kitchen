name 'reporta_mac_osx'
description 'The general config of workstations at Reporta AG.'
run_list(
  'recipe[utils::readline]',
  'recipe[zsh]',
  'recipe[pivotal_workstation::git]',
  'recipe[pivotal_workstation::git_config_global_defaults]',
  'recipe[1password]',
  'recipe[dropbox]',
  'recipe[firefox]',
  'recipe[chrome]',
  'recipe[iterm2]',
  'recipe[alfred]',
  'recipe[pivotal_workstation::rbenv]',
  'recipe[pivotal_workstation::java]',
  'recipe[pivotal_workstation::disable_front_row]',
  'recipe[pivotal_workstation::grid]',
  'recipe[pivotal_workstation::keyboard_preferences]',
  'recipe[pivotal_workstation::set_finder_show_user_home_in_sidebar]',
  'recipe[pivotal_workstation::defaults_fast_key_repeat_rate]',
  'recipe[mac_os_x::settings]'
)
default_attributes(
  'one_password' => {
    'version' => '3.8.20',
    'checksum' => '3920778e7282a1a9a06bbf045e82d678'
  },
  'iterm2' => {
    'version' => '1_0_0_20120726',
    'checksum' => '19538b6be5cb6f97e34aa729983a90ebc7a0e7ea'
  },
  'rbenv' => {
    'rubies' => {
       '1.9.3-p194' => {
         'env' => 'CONFIGURE_OPTS="--disable-install-doc --with-readline-dir=$(brew --prefix readline)"'
       }
    },
    'default_ruby' => '1.9.3-p194'
  }
)
