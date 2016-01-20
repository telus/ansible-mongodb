require 'spec_helper'

describe 'ansible-mongodb::default' do

  describe package('mongodb-org-server') do
    it { should be_installed.by('apt') }
  end

  describe package('pymongo') do
    it { should be_installed.by('pip') }
  end

  describe package('mongodb-org-shell') do
    it { should be_installed.by('apt') }
  end

  describe service('mongod') do
    it { should be_enabled }
    it { should be_running }
  end
end
