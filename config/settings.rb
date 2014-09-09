require 'settingslogic'

module Rails::Application::Config
  class Settings < Settingslogic
    source File.expand_path('../application1.yml', __FILE__)
    namespace Rails.env
    load!
  end
end

Rails.application.config.settings = Rails::Application::Config::Settings
