#
# Cookbook Name:: tor-mirror
# Recipe:: nginx
#
# Copyright 2014, ka’imi
#

include_recipe "nginx::default"

nginx_site "tor-mirror" do
  template "nginx.conf.erb"
end

include_recipe "tor-mirror::default"
