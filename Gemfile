# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

group :development, :test do
  gem 'rubocop'
  gem 'simplecov'
  gem 'simplecov-console', '~> 0.7.2'
end
