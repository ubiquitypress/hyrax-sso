# frozen_string_literal: true

namespace :hyrax do
  namespace :sso do
    desc 'Copy migrations from hyrax-sso to host application'
    task install: :environment do
      source = File.expand_path('../../../../db/migrate', __FILE__)
      destination = Rails.root.join('db/migrate')

      FileUtils.cp_r(source, destination)
    end
  end
end


