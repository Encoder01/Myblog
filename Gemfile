source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'bourbon', '3.0.1'
gem 'bootstrap-sass', '~> 3.3.6'
gem 'activeadmin', '~> 1.0.0.pre5', :ref => '811f286fda3b6dfa91aa'
gem 'active_admin_editor', github: 'ejholmes/active_admin_editor'
gem 'font-awesome-rails'
gem 'autoprefixer-rails'
gem 'devise'
gem 'ckeditor'
gem 'carrierwave', '~> 1.0'
gem 'mini_magick'
gem 'bcrypt', git: 'https://github.com/codahale/bcrypt-ruby.git', :require => 'bcrypt'
gem 'devise-bootstrapped'
gem 'will_paginate-bootstrap'
gem 'will_paginate'
gem 'bootstrap-slider-rails'
gem 'ckeditor-imgur'


gem 'rails', '~> 5.1.3'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'

gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  gem 'web-console', '>= 3.3.0'
end

group :development do
  gem 'sqlite3'
  gem 'spring'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end


gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
