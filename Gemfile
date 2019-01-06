source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.5.3"

gem "bootsnap", ">= 1.1.0", require: false
gem "capybara"
gem "nokogiri"

gem "pg", ">= 0.18", "< 2.0"
gem "poltergeist"
gem "puma", "~> 3.11"
gem "rails", "~> 5.2.2"

group :development, :test do
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem "factory_bot_rails"
  gem "faker"
  gem "rspec-rails", "~> 3.8"
  gem "pry-rails"
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :test do
  gem "database_cleaner"
end

gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
