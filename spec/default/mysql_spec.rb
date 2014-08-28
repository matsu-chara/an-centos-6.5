require 'spec_helper'

describe package('mysql') do
  it { should be_installed }
end

describe service('mysqld') do
  it { should be_enabled   }
  it { should be_running   }
end

describe command('/usr/bin/mysql -u root -e "SELECT version()"') do
    it { should return_exit_status 0 }
    it { should return_stdout(/5.[0-9]+.[0-9]+/) }
end
