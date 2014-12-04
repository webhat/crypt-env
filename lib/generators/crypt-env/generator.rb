module CryptEnv
	class Generator < Rails::Generators::NamedBase
		source_root File.expand_path('../templates', __FILE__)

		def create_initializer_file
			initializer 'crypt-env.rb', initializer_file
		end

		def initializer_file
<<RUBY
CryptEnv.setup(key: ENV['CRYPT_ENV_KEY'])
RUBY
		end
	end
end
