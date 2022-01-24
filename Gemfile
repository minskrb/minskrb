source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'rails', '~> 5.2.0'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'redis', '~> 4.0', '>= 4.0.2'
gem 'sidekiq', '~> 6.4', '>= 6.4.0'
gem 'webpacker', '~> 3.5'
gem 'bootsnap', '>= 1.1.0', require: false

gem 'devise'

gem 'administrate'
gem 'administrate-field-nested_has_many'
gem 'administrate-field-enum'

gem 'aws-sdk-s3'
gem 'file_validators'
gem 'mini_magick'

gem 'sendgrid-ruby'
gem 'video_info'

group :development, :test do
  gem 'rspec-rails', '~> 3.7'
  gem 'rails-controller-testing'
  gem 'rubocop'
  gem 'pry'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'capistrano', '~> 3.11'
  gem 'capistrano-bundler'
  gem 'capistrano-rvm'
  gem 'capistrano-yarn'
  gem 'capistrano-rails'
  gem 'capistrano3-puma', github: "seuros/capistrano-puma"
  gem 'capistrano-db-tasks', require: false
end

group :test do
  gem 'shoulda', '~> 3.5'
  gem 'shoulda-matchers', '~> 3.0'
  gem 'factory_bot_rails', '~> 4.0'
  gem 'faker', :git => 'https://github.com/stympy/faker.git', :branch => 'master'
  gem 'capybara', '>= 2.15', '< 4.0'
  gem 'selenium-webdriver', '2.53.4'
  gem 'poltergeist'
  gem 'chromedriver-helper'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
