# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Event.delete_all



# Event.create(title: "CyberShow", Month: "January", Country: "UK", Diary: "Interesting event" );
# Event.create(title: "DigiShow", Month: "February", Country: "USA", Diary: "Brilliant event" );
# Event.create(title: "CryptoShow", Month: "March", Country: "India", Diary: "Exciting event" );
# Event.create(title: "TechShow", Month: "April", Country: "Canada", Diary: "Intelligent event" );
# Event.create(title: "CompShow", Month: "May", Country: "France", Diary: "Fab event" );
# Event.create(title: "Hackathon", Month: "June", Country: "Ireland", Diary: "Awesome event" );
# Event.create(title: "AIShow", Month: "July", Country: "Hong Kong", Diary: "Amazing event" );



30.times do
    Event.create(title: Faker::Name.name, month: Faker::Date.in_date_period(month: 2), country: Faker::Address.country, diary: Faker::Markdown.emphasis)
end