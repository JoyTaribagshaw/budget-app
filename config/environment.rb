# frozen_string_literal: true

# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# config/environments/development.rb
Rails.application.configure do
    config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
  end
  