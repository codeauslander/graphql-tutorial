# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

15.times { Pet.create(name: Faker::Dog.name, kind: Faker::Dog.breed) }
  15.times { Owner.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, bio: Faker::Lorem.paragraph) }
  
  owners = Owner.all
  
  Pet.all.each do |pet|
    owner = owners.sample
    pet.update(owner: owner)
  
    5.times { Activity.create(description: Faker::Seinfeld.quote, owner: owner, pet: pet) }
  end