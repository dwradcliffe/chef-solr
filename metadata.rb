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
depends 'ark'
depends 'java'

source_url 'https://github.com/dwradcliffe/chef-solr' if respond_to?(:source_url)
issues_url 'https://github.com/dwradcliffe/chef-solr/issues' if respond_to?(:issues_url)
