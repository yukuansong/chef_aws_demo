#
# Cookbook Name:: testcluster
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

#with_driver 'fog:AWS', :compute_options => { :aws_access_key_id => 'AKIAJIU3JBV5LQHEZTGA', :aws_secret_access_key => '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', :region => 'us-west-1' }
#with_machine_options({
#  bootstrap_options: {
#    image_id: 'ami-df6a8b9b',
#  }
#})

# require 'chef/provisioning/aws_driver'
# with_driver 'aws::us-west-1'
#
# with_chef_server "https://api.chef.io/organizations/jcook-chef-learning",
#   :client_name => 'jcook-fastrobot',
#   :signing_key_filename => '/Users/jcook/fastrobot/AWS/.chef/jcook-fastrobot.pem'
#
# aws_vpc 'aws-chef-vpc' do
#   cidr_block '10.0.0.0/23'
#   internet_gateway true
#   main_routes '0.0.0.0/0' => :internet_gateway
#   enable_dns_hostnames true
# end
#
# aws_subnet 'aws-chef-web-subnet' do
#   vpc 'aws-chef-vpc'
#   cidr_block '10.0.0.0/24'
#   map_public_ip_on_launch true
# end
#
# aws_subnet 'aws-chef-db-subnet' do
#   vpc 'aws-chef-vpc'
#   cidr_block '10.0.1.0/24'
#   map_public_ip_on_launch true
# end
#
# aws_security_group 'aws-chef-sg' do
#   vpc 'aws-chef-vpc'
#   inbound_rules '0.0.0.0/0' => [ 22, 80 ]
#   # outbound_rules [
#   #   {:port => 22..22, :protocol => :tcp, :destinations => ['0.0.0.0/0'] }
#   # ]
# end
#
# machine 'moe' do
# #  machine_options bootstrap_options: { image_id: 'ami-df6a8b9b', :availability_zone => 'us-west-1c', instance_type: 't2.micro' }, convergence_options: { ssl_verify_mode: :verify_none }``
#   machine_options bootstrap_options: {
#     image_id: 'ami-df6a8b9b',
#     instance_type: 't2.micro',
#     subnet: 'aws-chef-web-subnet',
#     security_group_ids: ['aws-chef-sg']
#     },
#     convergence_options: {
#       ssl_verify_mode: :verify_none
#     }
# end
#
# machine 'curly' do
#   machine_options bootstrap_options: {
#     image_id: 'ami-df6a8b9b',
#     instance_type: 't2.micro',
#     subnet: 'aws-chef-db-subnet',
#     security_group_ids: ['aws-chef-sg']
#     },
#     convergence_options: {
#       ssl_verify_mode: :verify_none
#     }
# end