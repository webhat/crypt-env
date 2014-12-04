describe CryptEnv::Middleware::ConvertEnvironment do
	it '#populate' do
		key = 'CE_TOAST'
		expected = ENV[key] = 'toasty'
		CryptEnv::Middleware::ConvertEnvironment.populate

		actual = CryptEnv.decode key
		expect(actual).to eq expected
	end
end
