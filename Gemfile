source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster.
# Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'devise'
gem 'omniauth'
gem 'omniauth-vkontakte'
gem 'omniauth-google'
gem 'omniauth-google-oauth2'
gem 'omniauth-gplus', '~> 2.0'
gem 'omniauth-github'
gem 'omniauth-facebook'
gem 'omniauth-facebook-access-token'
gem 'omniauth-twitter'
gem 'omniauth-yandex'
gem 'omniauth-mail_ru'
gem 'actionpack'

gem 'administrate'

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Bootstrap styles.
gem 'bootstrap-sass', '>= 3.3.5'
gem 'sprockets-rails', '>= 2.3.3'

# REST API framework.
gem 'grape'

group :production do
  # Use Unicorn as the app server
  gem 'unicorn'
  gem 'rails_12factor'
  gem 'pg'
end

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'

  # Generate users for tests.
  gem 'factory_girl_rails'
  gem 'faker'

  # Collect coverrage and publicate it.
  gem 'simplecov'
  gem 'coveralls'
  # Call 'byebug' anywhere in the code to stop execution and
  # get a debugger console.
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running
  # in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # Rubocop will check you code style and rdoc styles.
  # Read more: https://github.com/bbatsov/rubocop
  gem 'rubocop'
end
