source 'http://rubygems.org'

ruby '2.0.0'

gem 'bourbon'
gem 'high_voltage'
gem 'jquery-rails'
gem 'pg'
gem 'protected_attributes'
gem 'rails', '>= 4.0.0'
gem 'simple_form'
gem 'unicorn'

gem 'coffee-rails'
gem 'sass-rails'
gem 'uglifier'

group :development do
  gem 'foreman'
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'sham_rack'
end

group :test do
  gem 'bourne', require: false
  gem 'poltergeist'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
  gem 'timecop'
end

group :staging, :production do
  gem 'newrelic_rpm'
end
