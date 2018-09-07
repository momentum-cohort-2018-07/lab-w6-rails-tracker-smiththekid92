require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


50.times do

Character.create(
  name: Faker::DrWho.character, 
  species: Faker::ElderScrolls.race,
  planet_origin: Faker::StarWars.planet
)
end

600.times do

Note.create(
  body: Faker::GameOfThrones.quote,
  character_id: 1+rand(50)
)
end