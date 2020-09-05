name 'olyn_fail2ban'
maintainer 'Scott Richardson'
maintainer_email 'dev@grogwood.com'
chef_version '~> 16'
license 'GPL-3.0'
supports 'debian', '>= 10'
source_url 'https://gitlab.com/olyn/olyn_fail2ban'
description 'Installs and configures fail2ban'
version '1.0.1'

provides 'olyn_fail2ban::default'
recipe 'olyn_fail2ban::default', 'Installs and configures fail2ban'

depends 'fail2ban', '~> 6'
