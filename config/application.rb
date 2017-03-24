require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module App
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.public_file_server.enabled = ENV['RAILS_SERVE_STATIC_FILES'].present?
    config.active_job.queue_adapter = :sidekiq

    if ENV["RAILS_LOG_TO_STDOUT"].present?
      logger           = ActiveSupport::Logger.new(STDOUT)
      logger.formatter = config.log_formatter
      config.log_tags  = [:subdomain, :uuid]
      config.logger    = ActiveSupport::TaggedLogging.new(logger)
    end
  end
end
