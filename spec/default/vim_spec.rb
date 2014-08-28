require 'spec_helper'

describe command('/usr/local/bin/vim --version') do
    it { should return_exit_status 0 }
    it { should return_stdout(/VIM - Vi IMproved 7\.4/) }
    it { should return_stdout(/\+lua/) }
end
