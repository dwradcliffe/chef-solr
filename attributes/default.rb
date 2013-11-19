#
# Cookbook Name:: solr
# Attributes:: default
#
# Copyright 2013, David Radcliffe
#

default['solr']['version']  = '4.5.1'
default['solr']['url']      = "http://apache.mirrors.lucidnetworks.net/lucene/solr/#{node['solr']['version']}/solr-#{node['solr']['version']}.tgz"
default['solr']['data_dir'] = '/etc/solr'
