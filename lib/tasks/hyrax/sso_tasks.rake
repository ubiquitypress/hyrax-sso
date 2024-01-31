
namespace :hyrax do
  namespace :sso do
    desc "Copies migrations to the application."
    task :install do
      puts "Copying migrations to application..."
      system "bin/rails railties:install:migrations FROM=hyrax_sso"
    end
  end
end