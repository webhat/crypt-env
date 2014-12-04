require 'rails_helper'

RSpec.describe 'CryptEnvTestController' do
	it 'should do one environment variable' do
		expected = '1234567890'
		key = 'CE_TEST'
		ENV[key] = expected

		get "/crypt_env_test", {}

		actual = CryptEnv.decode key

		expect(actual).to eq expected
	end

	it 'should do multiple environment variables' do
		expected_a = '99999999'
		expected_b = '11111111'
		key_a = 'CE_TEST_A'
		key_b = 'CE_TEST_B'
		ENV[key_a] = expected_a
		ENV[key_b] = expected_b

		get "/crypt_env_test", {}

		actual_a = CryptEnv.decode key_a
		actual_b = CryptEnv.decode key_b

		expect(actual_a).to eq expected_a
		expect(actual_b).to eq expected_b
	end
end
