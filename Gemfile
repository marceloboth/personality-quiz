# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.0'

gem 'rails', '~> 7.0.4'

gem 'bootsnap', require: false
gem 'cssbundling-rails'
gem 'jbuilder'
gem 'jsbundling-rails'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'

group :development, :test do
  gem 'capybara'
  gem 'pry-meta'
  gem 'rspec-rails', '~> 4.0.0'
  gem 'factory_bot_rails'
end

group :development do
  gem 'web-console', '>= 4.1.0'

  gem 'brakeman'
  gem 'bundler-audit'
  gem 'foreman', require: false
  gem 'rubocop', require: false
  gem 'rubocop-packaging', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
  gem 'ruby_audit'
end

group :test do
  gem 'cuprite'
  gem 'simplecov'
end

group :production do
  gem 'lograge'
end

# UI
gem 'view_component'
