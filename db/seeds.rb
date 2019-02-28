# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

25.times do
  User.create(
    :name => Faker::Name.unique.name
  )
end

15.times do
  Project.create(
    :name => Faker::App.unique.name,
    :creator => User.all.sample
  )
end

20.times do
  Backing.create(
    :backer => User.all.sample,
    :project => Project.all.sample,
    :amount => rand(1000..999999)
  )
end
