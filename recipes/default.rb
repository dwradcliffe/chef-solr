#
# Cookbook Name:: solr
# Recipe:: default
#
# Copyright 2013, David Radcliffe
#

if node['solr']['install_java']
  include_recipe 'apt'
  include_recipe 'java'
end

extract_path = "#{node['solr']['dir']}-#{node['solr']['version']}"
solr_path = "#{extract_path}/#{node['solr']['version'].split('.')[0].to_i < 5 ? 'example' : 'server'}"

ark 'solr' do
  url node['solr']['url']
  version node['solr']['version']
  checksum node['solr']['checksum']
  path node['solr']['dir']
  prefix_root '/opt'
  prefix_home '/opt'
  owner node['solr']['user']
  action :install
end

directory node['solr']['data_dir'] do
  owner node['solr']['user']
  group node['solr']['group']
  recursive true
  action :create
end

template '/var/lib/solr.start' do
  source 'solr.start.erb'
  owner 'root'
  group 'root'
  mode '0755'
  variables(
    :solr_dir => solr_path,
    :solr_home => node['solr']['data_dir'],
    :port => node['solr']['port'],
    :pid_file => node['solr']['pid_file'],
    :log_file => node['solr']['log_file'],
    :java_options => node['solr']['java_options']
  )
  only_if { !platform_family?('debian') }
end

template '/etc/init.d/solr' do
  source platform_family?('debian') ? 'initd.debian.erb' : 'initd.erb'
  owner 'root'
  group 'root'
  mode '0755'
  variables(
    :solr_dir => solr_path,
    :solr_home => node['solr']['data_dir'],
    :port => node['solr']['port'],
    :pid_file => node['solr']['pid_file'],
    :log_file => node['solr']['log_file'],
    :user => node['solr']['user'],
    :java_options => node['solr']['java_options']
  )
end

service 'solr' do
  supports :restart => true, :status => true
  action [:enable, :start]
end
