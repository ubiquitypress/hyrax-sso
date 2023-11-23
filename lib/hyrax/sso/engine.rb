# frozen_string_literal: true


module Hyrax
  module Sso
    class Engine < ::Rails::Engine
      config.to_prepare do
        Dir.glob(Rails.root + "app/views/hyrax/sso/**/*").each do |c|
          Rails.application.config.assets.precompile += [c] unless File.directory?(c)
        end
      end
    end
  end
end
