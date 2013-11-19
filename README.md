# chef-solr [![Build Status](https://travis-ci.org/dwradcliffe/chef-solr.png?branch=master)](https://travis-ci.org/dwradcliffe/chef-solr)

Installs [solr](http://lucene.apache.org/solr/) and starts the service.

## Recipes

- `default` - This will install java, download solr and setup the service

## Attributes

- `node['solr']['version']` - Version of solr to install
- `node['solr']['url']` - Url of solr source to download
- `node['solr']['data_dir']` - Location for solr data and config


## License and Author

License: [MIT](https://github.com/dwradcliffe/chef-solr/blob/master/LICENSE)

Author: [David Radcliffe](https://github.com/dwradcliffe)

Inspiration for the start script from [https://github.com/jbusby/solr-initd](https://github.com/jbusby/solr-initd)
