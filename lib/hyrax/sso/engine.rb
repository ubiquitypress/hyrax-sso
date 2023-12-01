# frozen_string_literal: true
require "rails"

module Hyrax
  module Sso
    class Engine < ::Rails::Engine
      isolate_namespace Hyrax::Sso

      sso_view_path = Hyrax::Sso::Engine.root.join('app/views')
      puts "LOG_sso_view_path" + sso_view_path

      initializer 'hyrax-sso.prepend_view_paths', before: :load_config_initializers do |app|
        app.config.paths['app/views'].unshift(root.join('app/views'))
      end
    end
  end
end