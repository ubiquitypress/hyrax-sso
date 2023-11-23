# frozen_string_literal: true

# lib/generators/hyrax/sso/install_generator.rb
module Hyrax
  module Sso
    module Generators
      class InstallGenerator < Rails::Generators::Base
        source_root File.expand_path('templates', __dir__)

        def copy_migrations
          rake 'hyrax:sso:install:migrations'
        end
      end
    end
  end
end
