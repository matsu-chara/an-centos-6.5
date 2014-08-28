require 'spec_helper'

describe command('/usr/local/bin/zsh --version') do
    it { should return_exit_status 0 }
    it { should return_stdout(/zsh 5.0.[0-9]+/) }
end
