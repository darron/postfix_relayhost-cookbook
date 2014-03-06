# encoding: utf-8
#
# Cookbook Name:: postfix_relayhost
# Attributes:: default
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

default['postfix']['sasl']['smtp_sasl_user_name'] = 'username-goes-here'
default['postfix']['sasl']['smtp_sasl_passwd']    = 'password'
default['postfix']['main']['relayhost'] = 'relayhost.example.com'
default['postfix']['main']['smtp_sasl_auth_enable'] = 'yes'
default['postfix']['main']['smtp_sasl_security_options'] = 'noanonymous'
default['postfix']['domain_name'] = 'example.com'
default['postfix']['my_networks'] = '127.0.0.0/8 [::ffff:127.0.0.0]/104 [::1]/128'
default['postfix']['smtp_use_tls'] = 'no'
default['postfix']['smtp_tls_CAfile'] = '/etc/postfix/cacert.pem'
