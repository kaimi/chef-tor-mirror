#
# Cookbook Name:: tor-mirror
# Recipe:: default
#
# Copyright 2014, ka’imi
#

rsync = "rsync -av --delete rsync://rsync.torproject.org/website-mirror #{node['tor-mirror']['basedir']}"

# first run? then sync once.
execute "rsync" do
  command rsync
  not_if Dir.exists?(node['tor-mirror']['basedir']
end

# cron job
cron "tor-mirror" do
  minute "0"
  hour "*/#{node['tor-mirror']['sync_frequency']}"
  user node['tor-mirror']['user']
  command rsync
end
