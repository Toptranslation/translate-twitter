source 'https://rubygems.org/'

gem 'rails', '~> 3.2.22'
gem 'mysql2', '~> 0.3.10'
gem 'twitter', '~> 6.1'
gem 'activeadmin'
gem 'omniauth-twitter'
gem 'bing_translator'
gem 'constantrecord'
gem 'blueprint-rails'
gem 'htmlentities'
gem 'whenever', :require => false
gem 'devise'
gem 'test-unit'
gem 'rollbar'

group :development, :test do
  gem 'looksee'
  gem 'pry'
  gem 'cane'
  gem 'fudge'
  gem 'sqlite3'
  gem 'webmock'
end

group :production do
  # Use unicorn as the app server
  gem 'unicorn'
end

group :test do
  gem 'rspec-rails'
  gem 'guard-rspec'
  gem 'shoulda-matchers'
  gem 'simplecov', :require => false
  gem 'coveralls', :require => false
end

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'therubyracer', :platforms => :ruby
  gem 'uglifier', '>= 1.0.3'
end
