# frozen_string_literal: true
require "rails"

module Hyrax
  module Sso
    class Engine < ::Rails::Engine
      isolate_namespace Hyrax::Sso

      config.after_initialize do
        my_engine_root = Hyrax::Sso::Engine.root.to_s
        paths = ActionController::Base.view_paths.collect{|p| p.to_s}
        # This is the opposite of what you usually want to do. Normally app views override engine views
        # but in our case things in the Hyrax-sso override what is in the application
        paths = [my_engine_root + '/app/views'] + paths
        ActionController::Base.view_paths = paths.uniq
        ::ApplicationController.send :helper, Hyrax::Sso::Engine.helpers
      end
    end
  end
end