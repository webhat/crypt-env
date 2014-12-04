# in lib/crypt-env/middleware.rb
module CryptEnv
  module Middleware
		autoload :Initializer, 'crypt-env/middleware/initializer'
		autoload :ConvertEnvironment, 'crypt-env/middleware/convert_environment'
  end
end
