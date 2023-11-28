# lib/generators/hyrax/sso/views_generator.rb
module Hyrax
  module Sso
    class ViewsGenerator < Rails::Generators::Base
      source_root File.expand_path('../../../../app/views', __FILE__)

      def copy_views
        directory 'proprietor/accounts', 'app/views/proprietor/accounts'
      end
    end
  end
end