# encoding: utf-8
require 'spec_helper'

# Write unit tests with ChefSpec - https://github.com/sethvargo/chefspec#readme
describe 'postfix_relayhost::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'installs postfix' do
    expect(chef_run).to install_package('postfix')
  end

  it 'installs sasl2 libs' do
    expect(chef_run).to install_package('libsasl2-2')
  end

  it 'installs libsasl2-modules' do
    expect(chef_run).to install_package('libsasl2-modules')
  end

  it 'installs ca-certificates' do
    expect(chef_run).to install_package('ca-certificates')
  end

  it 'enables the postfix service' do
    expect(chef_run).to enable_service('postfix')
  end

  it 'starts the postfix service' do
    expect(chef_run).to start_service('postfix')
  end
end
