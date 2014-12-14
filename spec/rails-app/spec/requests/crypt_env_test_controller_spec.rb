require 'rails_helper'

RSpec.describe 'CryptEnvTestController' do
	before do
		@encrypt = OpenSSL::Cipher::AES.new(256, :CBC)
		@encrypt.encrypt
		@key     = @encrypt.random_key
		@iv      = @encrypt.random_iv
		CryptEnv.setup @key, @iv
	end

	it 'should do one environment variable' do
		expected = '1234567890'
		key = 'CE_TEST'
		ENV[key] = Base64.encode64(@encrypt.update(expected) + @encrypt.final)

		get "/crypt_env_test", {}

		actual = CryptEnv.decode key

		expect(actual).to eq expected
	end

	it 'should do multiple environment variables' do
		expected_a = '99999999'
		expected_b = '11111111'
		key_a = 'CE_TEST_A'
		key_b = 'CE_TEST_B'
		ENV[key_a] = Base64.encode64(@encrypt.update(expected_a) + @encrypt.final)
		@encrypt.reset
		ENV[key_b] = Base64.encode64(@encrypt.update(expected_b) + @encrypt.final)

		get "/crypt_env_test", {}

		actual_a = CryptEnv.decode key_a
		actual_b = CryptEnv.decode key_b

		expect(actual_a).to eq expected_a
		expect(actual_b).to eq expected_b
	end
end
