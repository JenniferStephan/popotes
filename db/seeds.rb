

User.destroy_all
Meal.destroy_all
Order.destroy_all
Ingredient.destroy_all

w = User.create!(
  username: 'Winnie',
  email: 'ourson@gmail.com',
  password: 'testtest3',
)

j = User.create!(
  username: "Javier B.",
  email: "javier@sexy.com",
  password: "bailar"
)

t = User.create!(
  username: 'Tinkie Winky',
  email: 'titi@gmail.com',
  password: 'testtest4',
)

p = User.create!(
  username: 'Paquito',
  email: 'pepito@gmail.com',
  password: 'testtest5',
)


soup = Meal.create!(
  name: 'Chinese soup',
  address: '10 villa Gaudelet, Paris',
  category: 'Chinese',
  description: 'A delicious soup',
  unit_price: 6,
  quantity_max: 3,
  user: p
)

salad = Meal.create!(
  name: 'Ceasar salad',
  address: '10 villa Gaudelet, Paris',
  category: 'Healthy',
  description: 'A Healthy salad',
  unit_price: 5,
  quantity_max: 3,
  user: t
)

vegsalad = Meal.create!(
  name: 'Vege salad',
  address: '10 villa Gaudelet, Paris',
  category: 'Healthy',
  description: 'A Healthy salad',
  unit_price: 5,
  quantity_max: 4,
  user: j
)


Order.create!(
  order_quantity: 1,
  pick_up_date: '2019-08-20',
  user: p,
  meal: vegsalad,
)

Order.create!(
  order_quantity: 3,
  pick_up_date: '2019-08-23',
  user: t,
  meal: salad,
)

Order.create!(
  order_quantity: 2,
  pick_up_date: '2019-08-23',
  user: p,
  meal: soup,
)

ingredients = ["Céréales contenant du gluten", "Crustacés", "Oeufs", "Poissons", "Arachides", "Soja", "Lait", "Fruits à coques", "Céleri", "Moutarde", "Graines de sésame"]

ingredients.each do |i|
  Ingredient.create!(name: i)
end
