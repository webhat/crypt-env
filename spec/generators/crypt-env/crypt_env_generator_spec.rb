require 'generator_spec'
require 'spec_helper'

describe CryptEnv::InstallGenerator, type: :generator do
	destination File.expand_path('../../tmp', __FILE__)
	arguments %w(something)

	before(:all) do
		prepare_destination
		run_generator
	end

	it 'creates a test initializer' do
		assert_file 'config/initializers/crypt-env.rb', /CryptEnv.setup/
	end
end
