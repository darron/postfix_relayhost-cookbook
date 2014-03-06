# encoding: utf-8
#
# Cookbook Name:: postfix_relayhost
# Recipe:: default
#
# Copyright (C) 2014, Darron Froese <darron@froese.org>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

package 'postfix'

package 'libsasl2-2'

package 'libsasl2-modules'

package 'ca-certificates'

service 'postfix' do
  action [:enable, :start]
end

template '/etc/postfix/main.cf' do
  source 'main.erb'
  owner 'root'
  group 'root'
  mode '0644'
  notifies :restart, 'service[postfix]'
end

template '/etc/postfix/master.cf' do
  source 'master.erb'
  owner 'root'
  group 'root'
  mode '0644'
  notifies :restart, 'service[postfix]'
end
