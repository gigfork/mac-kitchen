name 'reporta_dev'
description 'A base system for the development at Reporta AG.'
run_list(
  'recipe[sequel_pro]',
  'recipe[pivotal_workstation::ack]',
  'recipe[pivotal_workstation::imagemagick]',
  'recipe[pivotal_workstation::mongodb]',
  'recipe[pivotal_workstation::mysql]',
  'recipe[pivotal_workstation::postgres]',
  'recipe[pivotal_workstation::redis]'
)
