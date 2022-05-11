require "active_support/core_ext/integer/time"

Rails.application.configure do

  config.action_controller.perform_caching = true
  config.action_mailer.perform_caching = false
  config.active_storage.service = :local
  config.active_support.report_deprecations = false
  config.assets.compile = true
  config.cache_classes = true
  config.consider_all_requests_local       = false
  config.eager_load = true
  config.i18n.fallbacks = true
  config.log_formatter = ::Logger::Formatter.new
  config.log_level = :info
  config.log_tags = [ :request_id ]
  config.public_file_server.enabled = ENV["RAILS_SERVE_STATIC_FILES"].present?
  config.serve_static_assets = true  

  if ENV["RAILS_LOG_TO_STDOUT"].present?
    logger           = ActiveSupport::Logger.new(STDOUT)
    logger.formatter = config.log_formatter
    config.logger    = ActiveSupport::TaggedLogging.new(logger)
  end

  # Do not dump schema after migrations.
  config.active_record.dump_schema_after_migration = false
end
