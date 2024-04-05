unless Rails.env.production?
  namespace :dev do
    desc "Destroy, create, migrate, and seed database"
    task reset: [
      :environment, 
      "db:drop", 
      "db:create", 
      "db:migrate", 
      "db:seed", 
      "dev:sample_data" ] do
      puts "done resetting"
    end

    desc "Add sample data"
    task sample_data: :environment do

      # Create users
      5.times do
        
        user = User.create(
          first_name: Faker::Name.first_name,
          last_name: Faker::Name.last_name,
          email: "#{first_name}@example.com",
          username: first_name,
          password: "password"
        )
      end


      # Create organizations
      10.times do
        Organization.create(
          name: Faker::Company.name
        )
      end


      # Create members
      50.times do
        Members.create(
          first_name: Faker::Name.first_name,
          last_name: Faker::Name.last_name,
          phone_number: Faker::PhoneNumber.phone_number,
          role: "member",
          birthdate: Faker::Date.between(from: '1994-09-23', to: '2009-09-25'),
          email: "#{first_name}@example.com",
          organization_id: Organization.sample,
        )
      end


      # Create tasks
      status = ["not started", "in progress", "complete" ]
      20.times do {
        Tasks.create(
          text: Faker::TvShows::BrooklynNineNine.quote,
          status: status.sample,
          due_date: Faker::Date.in_date_period(year: 2024, month: 6),
          assigned_to_id: User.sample,
          organization_id: Organization.sample,
        )
      }

      # Create events

      # Create meeting minutes 


    end

  end
end
