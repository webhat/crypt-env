# in lib/crypt-env.rb
require 'base64'
module CryptEnv
	autoload :Middleware, 'crypt-env/middleware'
	autoload :InstallGenerator, 'generators/crypt_env/install_generator'

	@@env = {}
	@@crypto_key = ''
	@@crypto_iv = ''

	def self.decode key
		decipher = OpenSSL::Cipher::AES256.new(:CBC)
		decipher.decrypt
		decipher.key = @@crypto_key
		decipher.iv = @@crypto_iv

		decipher.update(Base64.decode64(@@env[key])) + decipher.final
	end

	def self.retrieve key, value
		@@env[key] = value
	end

	def self.setup crypto_key, crypto_iv
		@@crypto_key = crypto_key
		@@crypto_iv  = crypto_iv
	end
end
