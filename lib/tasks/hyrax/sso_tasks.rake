namespace :hyrax-sso do
  desc "Copies migrations to the application."
  task :install do
    puts "Copying migrations to application..."
    system "rake railties:install:migrations FROM=hyrax-sso"
  end
end