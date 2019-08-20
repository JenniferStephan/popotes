# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Meal.destroy_all
Order.destroy_all
Ingredient.destroy_all

User.create!(
  username: 'Winnie',
  email: 'ourson@gmail.com',
  password: 'testtest3',
)

User.create!(
  username: "Javier B.",
  email: "javier@sexy.com",
  password: "bailar"
)

User.create!(
  username: 'Tinkie Winky',
  email: 'titi@gmail.com',
  password: 'testtest4',
)

User.create!(
  username: 'Paquito',
  email: 'pepito@gmail.com',
  password: 'testtest5',
)


Meal.create!(
  name: 'Chinese soup',
  address: '10 villa Gaudelet, Paris',
  category: 'Chinese',
  description: 'A delicious soup',
  unit_price: 6,
  quantity_max: 3,
  user_id: 1
)

Meal.create!(
  name: 'Ceasar salad',
  address: '10 villa Gaudelet, Paris',
  category: 'Healthy',
  description: 'A Healthy salad',
  unit_price: 5,
  quantity_max: 3,
  user_id: 1
)

Meal.create!(
  name: 'Vege salad',
  address: '10 villa Gaudelet, Paris',
  category: 'Healthy',
  description: 'A Healthy salad',
  unit_price: 5,
  quantity_max: 4,
  user_id: 3
)


Order.create!(
  order_quantity: 1,
  pick_up_date: '2019-08-20',
  user_id: 2,
  meal_id: 3,
)

Order.create!(
  order_quantity: 3,
  pick_up_date: '2019-08-23',
  user_id: 1,
  meal_id: 2,
)

Order.create!(
  order_quantity: 2,
  pick_up_date: '2019-08-23',
  user_id: 3,
  meal_id: 1,
)

ingredients = ["Céréales contenant du gluten", "Crustacés", "Oeufs", "Poissons", "Arachides", "Soja", "Lait", "Fruits à coques", "Céleri", "Moutarde", "Graines de sésame"]

ingredients.each do |i|
  Ingredient.create(name: i)
end