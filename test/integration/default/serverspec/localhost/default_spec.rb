require 'spec_helper'

describe 'ansible-mongodb::default' do
  describe package('mongodb-org-server') do
    it { should be_installed.by('apt') }
  end

  describe package('mongodb-org-shell') do
    it { should be_installed.by('apt') }
  end

  describe package('pymongo') do
    it { should be_installed.by('pip').with_version('3.2.2')}
  end

  describe service('mongod') do
    it { should be_enabled }
  end

  describe port(27017) do
    it { should be_listening.on('0.0.0.0').with('tcp') }
  end

  describe file('/var/run/mongod/mongod.pid') do
    it { should exist }
  end

end
