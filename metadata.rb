name             'tor-mirror'
maintainer       'ka\'imi'
maintainer_email 'kaimi+chef@kaimi.cc'
license          ''
description      'Installs/Configures tor-mirror'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends "apache2"
depends "nginx"
