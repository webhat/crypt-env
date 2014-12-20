require 'base64'

describe CryptEnv::Middleware::ConvertEnvironment do
	before do
		@encrypt = OpenSSL::Cipher::AES.new(256, :CBC)
		@encrypt.encrypt
		@key     = @encrypt.random_key
		@iv      = @encrypt.random_iv
		CryptEnv.setup key: @key, iv: @iv
	end

	it '#populate' do
		key = 'CE_TOAST'
		expected = 'toasty'
		ENV[key] = Base64.encode64(@encrypt.update(expected) + @encrypt.final)

		CryptEnv::Middleware::ConvertEnvironment.populate

		actual = CryptEnv.decode key
		expect(actual).to eq expected
	end
end
