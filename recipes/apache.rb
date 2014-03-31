#
# Cookbook Name:: tor-mirror
# Recipe:: apache
#
# Copyright 2014, ka’imi
#

include_recipe "apache::default"

template "/etc/apache2/sites/available/tor-mirror" do
  source "apache.conf.erb"
end

apache_site "tor-mirror"

include_recipe "tor-mirror::default"
