source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'rails', '~> 6.1.7', '>= 6.1.7.3'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'redis', '~> 4.0', '>= 4.0.2'
gem 'sidekiq', '~> 5.2', '>= 5.2.1'
gem 'webpacker', '~> 3.5', '>= 3.5.5'
gem 'bootsnap', '>= 1.1.0', require: false

gem 'devise', '>= 4.7.0'

gem 'administrate', '>= 0.12.0'
gem 'administrate-field-nested_has_many'
gem 'administrate-field-enum', '>= 0.0.9'

gem 'aws-sdk-s3'
gem 'file_validators'
gem 'mini_magick'

gem 'sendgrid-ruby'
gem 'video_info'

group :development, :test do
  gem 'rspec-rails', '~> 3.7', '>= 3.7.2'
  gem 'rails-controller-testing', '>= 1.0.3'
  gem 'rubocop'
  gem 'pry'
end

group :development do
  gem 'web-console', '>= 3.6.2'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.1'
  gem 'capistrano', '~> 3.11'
  gem 'capistrano-bundler'
  gem 'capistrano-rvm'
  gem 'capistrano-yarn'
  gem 'capistrano-rails'
  gem 'capistrano3-puma', github: "seuros/capistrano-puma"
  gem 'capistrano-db-tasks', require: false
end

group :test do
  gem 'shoulda', '~> 3.6', '>= 3.6.0'
  gem 'shoulda-matchers', '~> 3.1', '>= 3.1.2'
  gem 'factory_bot_rails', '~> 4.10', '>= 4.10.0'
  gem 'faker', :git => 'https://github.com/stympy/faker.git', :branch => 'master'
  gem 'capybara', '>= 3.4.2', '< 4.0'
  gem 'selenium-webdriver', '2.53.4'
  gem 'poltergeist'
  gem 'chromedriver-helper'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
