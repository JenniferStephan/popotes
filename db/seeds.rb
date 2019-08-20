# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
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
  user_id: 1
)
