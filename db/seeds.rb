# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

15.times do
  Recipe.create(
    title: Faker::Dessert.variety,
    ingredients: Faker::Food.ingredient,
    description: Faker::HowIMetYourMother.catch_phrase,
    directions: Faker::Food.measurement,
    servings: Faker::Number.between(1, 5),
    img: 'https://static.pexels.com/photos/29302/pexels-photo.jpg'
  )
end

1.times do
    User.create(
    username: 'guest',
    password: 'guest'
    )
end
