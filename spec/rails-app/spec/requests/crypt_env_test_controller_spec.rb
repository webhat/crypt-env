require 'rails_helper'

RSpec.describe 'CryptEnvTestController' do
	it 'should do stuff' do
		expected = '1234567890'
		ENV['TEST'] = expected

		get "/crypt_env_test", {}

		actual = CryptEnv.decode 'TEST'

		expect(actual).to eq expected
	end
end
