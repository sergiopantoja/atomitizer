source 'https://rubygems.org'

ruby '2.3.1'
gem 'rails', '5.0.1'

gem 'devise' # authentication
gem 'omniauth-google-oauth2' # for Google account access
gem 'pg', '0.19.0' # for Postgres
gem 'pg_search', '2.0.1' # full-text search for Postgres
gem 'puma', '3.4.0' # web server
gem 'rack-timeout', '0.4.2' # end requests that take too long
gem 'redis', '3.2.2' # for Action Cable and Sidekiq - DO NOT UPGRADE TO 3.3 UNTIL MEMORY LEAK IS FIXED IN GEM
gem 'sass-rails', '5.0.6' # for SCSS files
gem 'sidekiq', '4.1.2' # background jobs
gem 'simple_form', '3.2.1' # rails forms made easier
gem 'slim-rails', '3.1.0' # lightweight HTML templating language, replacing ERB or Haml
gem 'turbolinks', '5.0.0' # makes navigating your web application faster
gem 'twilio-ruby', '4.11.1' # our bridge to telephony
gem 'uglifier', '3.0.0' # compressor for JavaScript assets

source 'https://rails-assets.org' do
  gem 'rails-assets-bootstrap'
  gem 'rails-assets-jquery-ujs'
  gem 'rails-assets-jquery'
  gem 'rails-assets-circliful'
end

group :development, :test do
  gem 'factory_girl_rails', '4.7.0'
  gem 'faker', '1.6.5'
  gem 'rspec-rails', '3.5.1'
end

group :development do
  gem 'annotate', '2.7.1'
  gem 'byebug', platform: :mri # for debugging
  gem 'dotenv-rails'
  gem 'listen', '~> 3.0.5'
  gem 'spring' # speeds up development by keeping the app running in the background
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console' # access an IRB console on exception pages
end
