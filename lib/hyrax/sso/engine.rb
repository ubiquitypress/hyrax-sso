# frozen_string_literal: true
require "rails"

module Hyrax
  module Sso
    class Engine < ::Rails::Engine
      isolate_namespace Hyrax::Sso

      initializer 'hyrax-sso.prepend_view_paths', before: :load_config_initializers do |app|
        app.config.paths['app/views'].unshift(root.join('app/views'))
      end
    end
  end
end