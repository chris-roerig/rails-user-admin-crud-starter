namespace :reload do
  desc "Starts Rails server"
  task :server => :environment do
    `rails s`
  end
end

desc "Removes temp database, runs migrations, runs seed and restarts the server"
task :reload => ["db:drop", "db:migrate", "db:seed", "reload:server"]
