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

        def add_to_proprietor_account
          path = %w[app views proprietor accounts edit.html.erb]

          file_path_to_add_edit_account = File.join(Rails.root.to_s, *path)

          # if Object.const_defined?(:HykuAddons)
          #   file_path_to_add_content = File.join(::HykuAddons::Engine.root.to_s, *path)
          # elsif Object.const_defined?(:Hyku)
          #   file_path_to_add_content = File.join(Rails.root.to_s, *path)
          # elsif Object.const_defined?(:Hyrax) && !Object.const_defined?(:Hyku) && !Object.const_defined?(:HykuAddons)
          #   file_path_to_add_content = File.join(::Hyrax::Engine.root.to_s, *path)
          # end

          append_to_file file_path_to_add_edit_account do
            <<-"RUBY"
            <%= render "hyrax/sso/proprietor/accounts/edit" %>
          RUBY
          end
        end
      end
    end
  end
end
