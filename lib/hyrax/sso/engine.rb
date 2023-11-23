# frozen_string_literal: true

module Hyrax
  module Sso
    class Engine < ::Rails::Engine
      isolate_namespace Hyrax::Sso

      # If you have any generators
      config.generators do |g|
        g.test_framework :rspec
      end
    end
  end
end