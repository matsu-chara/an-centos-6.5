require 'spec_helper'

describe package('php') do
  it { should be_installed }
end

describe command('/usr/bin/php -v') do
    it { should return_exit_status 0 }
    it { should return_stdout(/PHP 5.5.[0-9]+/) }
end

describe command('/usr/local/bin/composer') do
    it { should return_exit_status 0 }
end

describe file('/etc/php.ini') do
  it { should be_file }
end

describe file('/etc/php-fpm.d/www.conf') do
  it { should be_file }
  its(:content) { should match(/user = nginx/) }
  its(:content) { should match(/group = nginx/) }
end

describe file('/var/www/html/index.php') do
  it { should be_file }
end

# php_values = [{'max_execution_time' => 300},
#               {'memory_limit' => '128M'},
#               {'post_max_size' => '16M'},
#               {'upload_max_filesize' => '2M'},
#               {'max_input_time' => 300},
#               {'date.timezone' => 'Asia/Tokyo'}]

php_values = [{'date.timezone' => 'Asia/Tokyo'}]
describe 'PHP config parameters' do
  php_values.each do |php_value|
    context php_config(php_value.keys.first) do
      its(:value) { should eq php_value[php_value.keys.first] }
    end
  end
end
