name              'config'
description       'Config for LAMP stack'
version           '1.0.0'

recipe 'config', 'Config for LAMP stack'

depends 'apache'

%w{ rhel fedora centos }.each do |os|
  supports os
end
