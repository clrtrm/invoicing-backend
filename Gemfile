# frozen_string_literal: true

source "https://rubygems.org"

ruby "3.4.6"

# ==> Core
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"
gem "rails", "~> 8.1.3"
gem "bootsnap", require: false

# ==> Authentication
gem "devise", "~> 5.0"
gem "devise-jwt", "~> 0.13.0"

# Pagination
gem "pagy"

# ==> CORS
gem "rack-cors"

group :development, :test do
  # ==> Linting
  gem "rubocop", "~> 1.88", require: false
  gem "rubocop-factory_bot", "~> 2.28", require: false
  gem "rubocop-rails", "~> 2.35", require: false
  gem "rubocop-rspec", "~> 3.10", require: false
  gem "rubocop-rspec_rails", "~> 2.32", require: false

  # ==> Testing
  gem "factory_bot_rails", "~> 6.5"
  gem "faker", "~> 3.8"
  gem "rspec-rails", "~> 8.0"
  gem "shoulda-matchers", "~> 8.0"
end

