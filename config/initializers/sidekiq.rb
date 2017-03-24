Sidekiq.configure_server do |config|
  config.redis = { url: Rails.application.secrets.sidekiq_redis_url, network_timeout: 5 }
end

Sidekiq.configure_client do |config|
  config.redis = { url: Rails.application.secrets.sidekiq_redis_url, network_timeout: 5 }
end
