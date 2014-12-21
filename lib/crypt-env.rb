# in lib/crypt-env.rb
module CryptEnv
  autoload :Middleware, 'crypt-env/middleware'
  autoload :Crypto, 'crypt-env/crypto'
  autoload :InstallGenerator, 'generators/crypt_env/install_generator'

  @@env = {}
  @@crypto_key = ''
  @@crypto_iv = ''

  def self.decode key
    Crypto.decrypt @@env[key], key: @@crypto_key, iv: @@crypto_iv
  end

  def self.encode key, value
    @@env[key] = Crypto.encrypt value, key: @@crypto_key, iv: @@crypto_iv
  end

  def self.retrieve key, value
    @@env[key] = value
  end

  def self.setup crypto
    @@crypto_key = crypto[:key]
    @@crypto_iv  = crypto[:iv]
  end
end
