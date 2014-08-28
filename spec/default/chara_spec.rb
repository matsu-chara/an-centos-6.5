require 'spec_helper'

describe file('/home/vagrant/.dotfiles') do
  it { should be_directory }
  it { should be_owned_by 'vagrant' }
  it { should be_grouped_into 'vagrant' }
end

describe file('/home/vagrant/.dotfiles/setup.sh') do
  it { should be_file }
  it { should be_mode 764 }
end
