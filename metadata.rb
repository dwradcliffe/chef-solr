name             'solr'
maintainer       'David Radcliffe'
maintainer_email 'radcliffe.david@gmail.com'
license          'MIT'
description      'Installs the solr search engine.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.5.0'

supports 'amazon'
supports 'centos'
supports 'debian'
supports 'redhat'
supports 'scientific'
supports 'ubuntu'

depends 'apt'
depends 'java'
