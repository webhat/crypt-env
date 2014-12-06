# in lib/crypt-env.rb
module CryptEnv
	autoload :Middleware, 'crypt-env/middleware'
	autoload :InstallGenerator, 'generators/crypt_env/install_generator'

	@@env = {}
	@@crypto_key = ''

	def self.decode key
		@@env[key]
	end

	def self.retrieve key, value
		@@env[key] = value
	end

	def self.setup key
		@@crypto_key = key
	end
end
