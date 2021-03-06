Mail.register_interceptor RecipientInterceptor.new(ENV['EMAIL_RECIPIENTS'])
require Rails.root.join('config/initializers/smtp')
KubmoSite::Application.configure do
  config.cache_classes = true
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true
  config.serve_static_assets = false
  config.assets.compress = true
  config.assets.compile = false
  config.assets.digest = true
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = SMTP_SETTINGS
  config.i18n.fallbacks = true
  config.active_support.deprecation = :notify
  config.action_mailer.default_url_options = { host: 'www.example.com' }
end
