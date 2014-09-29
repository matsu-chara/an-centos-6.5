require 'spec_helper'

describe command('/usr/bin/man -v') do
    it { should return_exit_status 0 }
end

describe command('/usr/bin/tig -v') do
    it { should return_exit_status 0 }
end

describe command('/usr/bin/jq -V') do
    it { should return_exit_status 0 }
end

describe command('/usr/bin/tmux -V') do
    it { should return_exit_status 0 }
end
