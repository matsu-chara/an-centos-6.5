require 'spec_helper'

describe command('/usr/local/bin/git --version') do
    it { should return_exit_status 0 }
    it { should return_stdout(/git version 2.[0-9]+/) }
end
