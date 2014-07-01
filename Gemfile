source 'http://rubygems.org'



gem 'bootstrap-sass', '~> 3.0.3.0'
gem 'sass-rails', '~> 4.0.0'

gem 'high_voltage'
gem 'jquery-rails'
gem 'pg'
gem 'protected_attributes'
gem 'rails', '>= 4.0.0'
gem 'simple_form'
gem 'stripe'
gem 'unicorn'
gem 'rails_12factor'

gem 'coffee-rails'
gem 'uglifier'

group :production do
  gem 'rails_12factor'
end

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
