# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.4', '>= 5.2.4.3'
gem 'sqlite3'

gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]

  # Custom
  gem 'factory_bot_rails', '~> 6.1'
  gem 'faker', '~> 2.13'
  gem 'rspec-rails', '~> 4.0', '>= 4.0.1'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  # Custom
  gem 'pry-rails', '~> 0.3.9'
end

group :test do
  # Custom
  gem 'shoulda-matchers', '~> 4.3'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# Custom
gem 'active_model_serializers', '~> 0.10.10'
gem 'bcrypt', '~> 3.1', '>= 3.1.13'
gem 'jwt', '~> 2.2', '>= 2.2.1'
gem 'will_paginate', '~> 3.3'
# gem 'fast_jsonapi', '~> 1.5'
