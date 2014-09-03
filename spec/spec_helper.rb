begin
	require 'bundler/setup'
rescue LoadError
	puts 'It is recommended that you use bundler when running the tests.'
end

require 'better_strings'
require 'rspec'

RSpec.configure do |config|
end