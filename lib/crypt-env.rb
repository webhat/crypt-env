# in lib/crypt-env.rb
module CryptEnv
	autoload :Middleware, 'crypt-env/middleware'

	@@env = {}

	def self.decode key
		@@env[key]
	end

	def self.retrieve key, value
		@@env[key] = value
	end
end
