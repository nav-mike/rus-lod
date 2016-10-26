source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5.2'
group :development, :test do
  gem 'sqlite3'
end
gem 'pg', group: :production # for heroku
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

gem 'sprockets', '3.6.3'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'bootstrap-sass'
gem 'font-awesome-rails', '~> 4.4.0'
gem 'bootbox-rails'
gem 'bootstrap-generators', group: :development
gem 'slim-rails'
gem 'react-rails', '~> 1.7.0'
gem 'rails-backbone'
gem 'underscore-rails'

gem 'material_icons'

gem 'devise'
gem 'cancancan'
gem 'rolify'
gem 'puma'

# editor
gem 'jquery-ace-rails'

# fake data
gem 'faker'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  gem 'rspec-rails', '~> 3.5'
  gem 'rspec'
  gem 'rspec-json_expectations'
  gem 'mocha'
  gem 'factory_girl'
  gem 'database_cleaner'
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'simplecov', require: false, group: :test
  gem 'capybara-screenshot', group: :test
end

gem 'rails_12factor', group: :production

gem 'rubocop', require: false

gem 'slim_lint', require: false

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

ruby '2.3.1'
