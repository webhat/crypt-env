require 'base64'

# 
module CryptEnv
  class Crypto
    def self.decrypt value, crypto
      decipher = algorithm
      decipher.decrypt
      decipher.key = crypto[:key]
      decipher.iv = crypto[:iv]

      decipher.update(Base64.decode64(value)) + decipher.final
    end
    def self.encrypt value, crypto
      encipher = algorithm 
      encipher.encrypt
      encipher.key = crypto[:key]
      encipher.iv = crypto[:iv]

      Base64.encode64(encipher.update(value) + encipher.final)
    end

    def self.algorithm
      OpenSSL::Cipher::AES256.new(:CBC)
    end
  end
end
