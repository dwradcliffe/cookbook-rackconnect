name 'rackconnect'

maintainer       'David Radcliffe'
maintainer_email 'radcliffe.david@gmail.com'
license          'Apache 2.0'
description      'Configures rackconnect sudoers'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

recipe 'rackconnect', 'Setup the rackconnect sudoers fragment.'

depends          'sudo'

supports         'centos'
