# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
  username: 'guest',
  password: 'guest'
)

User.create(
  username: 'Daisy',
  password: 'daisy'
)

Recipe.create(
  title: 'Shrimp and Grits',
  ingredients:  Faker::StarWars.quote,
  description:  Faker::Lorem.paragraph,
  directions:   Faker::Lorem.paragraph,
  servings:     Faker::Number.between(1, 5),
  img:          'http://images.media-allrecipes.com/images/61275.jpg',
  user_id:       1
)
Recipe.create(
  title: 'Old Charleston Style Shrimp and Grits',
  ingredients:  Faker::StarWars.quote,
  description:  Faker::Lorem.paragraph,
  directions:   Faker::Lorem.paragraph,
  servings:     Faker::Number.between(1, 5),
  img:          'http://images.media-allrecipes.com/images/61275.jpg',
  user_id:       1
)
Recipe.create(
  title: 'Cinnamon Belgian Waffles',
  ingredients:  Faker::StarWars.quote,
  description:  Faker::Lorem.paragraph,
  directions:   Faker::Lorem.paragraph,
  servings:     Faker::Number.between(1, 5),
  img:       'http://images.media-allrecipes.com/userphotos/720x405/3571874.jpg',
  user_id:       1
)
Recipe.create(
  title: 'Shrimp and Grits',
  ingredients:  Faker::StarWars.quote,
  description:  Faker::Lorem.paragraph,
  directions:   Faker::Lorem.paragraph,
  servings:     Faker::Number.between(1, 5),
  img:          'http://images.media-allrecipes.com/images/61275.jpg',
  user_id:       1
)
Recipe.create(
  title: 'Jalapeno Steak',
  ingredients:  Faker::StarWars.quote,
  description:  Faker::Lorem.paragraph,
  directions:   Faker::Lorem.paragraph,
  servings:     Faker::Number.between(1, 5),
  img:          'http://images.media-allrecipes.com/userphotos/720x405/3889279.jpg',
  user_id:       1
)
Recipe.create(
  title: 'Blackened Catfish and Spicy Rice',
  ingredients:  Faker::StarWars.quote,
  description:  Faker::Lorem.paragraph,
  directions:   Faker::Lorem.paragraph,
  servings:     Faker::Number.between(1, 5),
  img:          'http://images.media-allrecipes.com/userphotos/720x405/866245.jpg',
  user_id:       1
)
Recipe.create(
  title: 'Pumpkin Dessert',
  ingredients:  Faker::StarWars.quote,
  description:  Faker::Lorem.paragraph,
  directions:   Faker::Lorem.paragraph,
  servings:     Faker::Number.between(1, 5),
  img:          'http://images.media-allrecipes.com/userphotos/720x405/1568843.jpg',
  user_id:       2
)
Recipe.create(
  title: 'Seafood Fettuccine',
  ingredients:  Faker::StarWars.quote,
  description:  Faker::Lorem.paragraph,
  directions:   Faker::Lorem.paragraph,
  servings:     Faker::Number.between(1, 5),
  img:          'http://images.media-allrecipes.com/userphotos/720x405/4502986.jpg',
  user_id:       2
)
Recipe.create(
  title: 'Seafood Creole',
  ingredients:  Faker::StarWars.quote,
  description:  Faker::Lorem.paragraph,
  directions:   Faker::Lorem.paragraph,
  servings:     Faker::Number.between(1, 5),
  img:          'http://images.media-allrecipes.com/userphotos/720x405/4460829.jpg',
  user_id:       2

)
Recipe.create(
  title: 'Mississippi Mud Cheesecake',
  ingredients:  Faker::StarWars.quote,
  description:  Faker::Lorem.paragraph,
  directions:   Faker::Lorem.paragraph,
  servings:     Faker::Number.between(1, 5),
  img:          'http://images.media-allrecipes.com/userphotos/560x315/2333905.jpg',
  user_id:       2

)
Recipe.create(
  title: 'Dessert Pizza',
  ingredients:  Faker::StarWars.quote,
  description:  Faker::Lorem.paragraph,
  directions:   Faker::Lorem.paragraph,
  servings:     Faker::Number.between(1, 5),
  img:          'http://images.media-allrecipes.com/userphotos/250x250/618338.jpg',
  user_id:       2

)
