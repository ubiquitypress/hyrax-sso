# frozen_string_literal: true

# hyrax-sso/lib/generators/hyrax/sso/install_generator.rb

module Hyrax
  module Sso
    module Generators
      class InstallGenerator < Rails::Generators::Base
        include Rails::Generators::Migration
        source_root File.expand_path('../../../../db/migrate', __dir__)

        # Implement a next migration number in line with the usual Rails convention
        def self.next_migration_number(path)
          Time.now.utc.strftime("%Y%m%d%H%M%S")
        end

        def copy_migrations
          migration_template '20231127152739_add_fields_for_sso.rb', 'db/migrate/add_fields_for_sso.rb'
        end

        # insert_into_file "config/routes.rb",
        #                 "mount Hyrax::Sso::Engine => '/'",
        #                 :after => "Rails.application.routes.draw do\n"
      end
    end
  end
end
