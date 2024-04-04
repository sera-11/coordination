namespace :dev do
  desc "Destroy, create, migrate, and seed database"
  task reset: [:environment, "db:drop", "db:create", "db:migrate", "db:seed" ] do
    # TODO
    puts "done"
  end

  desc "TODO"
  task sample_data: :environment do
  end

end
