Rails.application.routes.draw do
	resources :crypt_env_test, only: [:index]
end
