# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: crypt-env 0.1.4 ruby lib

Gem::Specification.new do |s|
  s.name = "crypt-env"
  s.version = "0.1.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Daniel W. Crompton"]
  s.date = "2014-12-21"
  s.description = ""
  s.email = ["crypt+env@specialbrands.net", ""]
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    ".rspec",
    ".travis.yml",
    "Gemfile",
    "Guardfile",
    "README.md",
    "Rakefile",
    "config/Guardfile",
    "crypt-env.gemspec",
    "lib/crypt-env.rb",
    "lib/crypt-env/middleware.rb",
    "lib/crypt-env/middleware/convert_environment.rb",
    "lib/crypt-env/middleware/initializer.rb",
    "lib/crypt-env/version.rb",
    "lib/generators/crypt_env/install_generator.rb",
    "spec/crypt-env/middleware/convert_environment_spec.rb",
    "spec/crypt-env/middleware/initializer_spec.rb",
    "spec/crypt-env/middleware_spec.rb",
    "spec/crypt-env_spec.rb",
    "spec/generators/crypt-env/crypt_env_generator_spec.rb",
    "spec/generators/tmp/config/initializers/crypt-env.rb",
    "spec/rails-app/.gitignore",
    "spec/rails-app/.rspec",
    "spec/rails-app/Gemfile",
    "spec/rails-app/Rakefile",
    "spec/rails-app/app/assets/images/.keep",
    "spec/rails-app/app/assets/javascripts/application.js",
    "spec/rails-app/app/assets/stylesheets/application.css",
    "spec/rails-app/app/controllers/application_controller.rb",
    "spec/rails-app/app/controllers/concerns/.keep",
    "spec/rails-app/app/controllers/crypt_env_test_controller.rb",
    "spec/rails-app/app/helpers/application_helper.rb",
    "spec/rails-app/app/helpers/crypt_env_test_helper.rb",
    "spec/rails-app/app/mailers/.keep",
    "spec/rails-app/app/models/.keep",
    "spec/rails-app/app/models/concerns/.keep",
    "spec/rails-app/app/views/crypt_env_test/index.html.erb",
    "spec/rails-app/app/views/layouts/application.html.erb",
    "spec/rails-app/bin/bundle",
    "spec/rails-app/bin/rails",
    "spec/rails-app/bin/rake",
    "spec/rails-app/bin/spring",
    "spec/rails-app/config.ru",
    "spec/rails-app/config/application.rb",
    "spec/rails-app/config/boot.rb",
    "spec/rails-app/config/database.yml",
    "spec/rails-app/config/environment.rb",
    "spec/rails-app/config/environments/development.rb",
    "spec/rails-app/config/environments/production.rb",
    "spec/rails-app/config/environments/test.rb",
    "spec/rails-app/config/initializers/assets.rb",
    "spec/rails-app/config/initializers/backtrace_silencers.rb",
    "spec/rails-app/config/initializers/cookies_serializer.rb",
    "spec/rails-app/config/initializers/crypt-env.rb",
    "spec/rails-app/config/initializers/filter_parameter_logging.rb",
    "spec/rails-app/config/initializers/inflections.rb",
    "spec/rails-app/config/initializers/mime_types.rb",
    "spec/rails-app/config/initializers/session_store.rb",
    "spec/rails-app/config/initializers/wrap_parameters.rb",
    "spec/rails-app/config/locales/en.yml",
    "spec/rails-app/config/routes.rb",
    "spec/rails-app/config/secrets.yml",
    "spec/rails-app/db/seeds.rb",
    "spec/rails-app/log/.keep",
    "spec/rails-app/spec/rails_helper.rb",
    "spec/rails-app/spec/requests/crypt_env_test_controller_spec.rb",
    "spec/rails-app/spec/spec_helper.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = "http://github.com/webhat/crypt-env"
  s.licenses = ["LGPLv2"]
  s.rubygems_version = "2.2.2"
  s.summary = ""

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<openssl>, [">= 0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<guard-rspec>, [">= 0"])
      s.add_development_dependency(%q<guard-yard>, [">= 0"])
      s.add_development_dependency(%q<rails>, [">= 3.1.0"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>, [">= 0"])
      s.add_development_dependency(%q<coveralls>, [">= 0"])
      s.add_development_dependency(%q<generator_spec>, [">= 0"])
    else
      s.add_dependency(%q<openssl>, [">= 0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
      s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<guard-rspec>, [">= 0"])
      s.add_dependency(%q<guard-yard>, [">= 0"])
      s.add_dependency(%q<rails>, [">= 3.1.0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<rspec-rails>, [">= 0"])
      s.add_dependency(%q<coveralls>, [">= 0"])
      s.add_dependency(%q<generator_spec>, [">= 0"])
    end
  else
    s.add_dependency(%q<openssl>, [">= 0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
    s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<guard-rspec>, [">= 0"])
    s.add_dependency(%q<guard-yard>, [">= 0"])
    s.add_dependency(%q<rails>, [">= 3.1.0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<rspec-rails>, [">= 0"])
    s.add_dependency(%q<coveralls>, [">= 0"])
    s.add_dependency(%q<generator_spec>, [">= 0"])
  end
end

