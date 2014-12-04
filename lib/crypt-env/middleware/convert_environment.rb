# in lib/crypt-env/middleware.rb
module CryptEnv
  module Middleware
		class ConvertEnvironment
			def self.populate
				ENV.each do |key,value| 
					CryptEnv.retrieve key, ENV[key] if key.start_with? 'CE_'
				end
			end
		end
  end
end
