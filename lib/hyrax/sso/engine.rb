# frozen_string_literal: true
require "rails"

module Hyrax
  module Sso
    class Engine < ::Rails::Engine
      isolate_namespace Hyrax::Sso

      # If you have any generators
      config.generators do |g|
        g.test_framework :rspec
      end

      initializer 'hyrax-sso.prepend_view_paths', before: :load_config_initializers do |app|
        app.config.paths['app/views'].unshift(root.join('app/views'))
      end

      # To load views from the gem instead of the application
      config.autoload_paths += %W(#{config.root}/app)
    end
  end
end