source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.4.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.3'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Authtentication of users
# gem 'devise_token_auth'
# ActiveModel::Serializer implementation and Rails hooks
gem 'active_model_serializers', '~> 0.10.0'
# Repository for collecting Locale data for Ruby on Rails I18n as well as other interesting, Rails related I18n stuff http://rails-i18n.org
gem 'rails-i18n', '~> 5.1'
# Translations for the devise gem
# gem 'devise-i18n'
# Classier solution for file uploads for Rails, Sinatra and other Ruby web frameworks https://github.com/carrierwaveuploader/carrierwave
gem 'carrierwave', '~> 2.0'
gem 'rmagick'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'
# A ruby implementation of the RFC 7519 OAuth JSON Web Token (JWT) standard. https://jwt.github.io/ruby-jwt/
gem 'jwt'


# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  
  # A library for generating fake data such as names, addresses, and phone numbers.
  gem 'faker'
  gem 'cpf_faker'
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
