# in lib/crypt-env/middleware.rb
module CryptEnv
  module Middleware
		class Initializer
			def initialize(app)
				@app = app
			end

			def call(env)
				ConvertEnvironment.populate

				@app.call(env)
			end
		end
  end
end
