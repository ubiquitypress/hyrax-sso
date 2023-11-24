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
          Time.now.utc.strftime("%Y%m%d%H%M%S%L")
        end

        def copy_migrations
          migration_template '20230301152739_add_sso_attributes_to_accounts.rb', 'db/migrate/add_sso_attributes_to_accounts.rb'
          migration_template '20230317071542_add_workos_connection_id_to_accounts.rb', 'db/migrate/add_workos_connection_id_to_accounts.rb'
          migration_template '20230320114316_clean_up_work_os_fields.rb', 'db/migrate/clean_up_work_os_fields.rb'
          migration_template '20230411011527_add_work_os_managed_domain_to_accounts.rb', 'db/migrate/add_work_os_managed_domain_to_accounts.rb'
        end
      end
    end
  end
end
