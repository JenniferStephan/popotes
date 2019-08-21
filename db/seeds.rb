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


soup = Meal.new(
  name: 'Chinese soup',
  address: '10 rue des Dames, Paris',
  category: 'Chinese',
  description: 'A delicious soup',
  unit_price: 6,
  quantity_max: 3,
  user: p
)
soup.remote_photo_url = "https://d1doqjmisr497k.cloudfront.net/-/media/mccormick-us/recipes/simply-asia/e/2000/egg_drop_noodle_soup_2000x1125.jpg?vd=20180710T052728Z&hash=3796EEE4205BCF5842BBFC0A9E79DD4A82679CF8"
soup.save!


salad = Meal.new(
  name: 'Ceasar salad',
  address: '200 rue de Rivoli, Paris',
  category: 'Healthy',
  description: 'A Healthy salad',
  unit_price: 5,
  quantity_max: 3,
  user: t
)
salad.remote_photo_url = "https://assets.afcdn.com/recipe/20130909/48615_w1024h768c1cx2089cy1393.jpg"
salad.save!

vegsalad = Meal.new(
  name: 'Vege salad',
  address: '10 villa Gaudelet, Paris',
  category: 'Healthy',
  description: 'A Healthy salad',
  unit_price: 5,
  quantity_max: 4,
  user: j
)
vegsalad.remote_photo_url = "https://www.doitinparis.com/files/2016/recette/06/thumbs-1180x525/salade-semoule.jpg"
vegsalad.save!

pizza_margarita = Meal.new(
  name: 'Pizza margarita',
  address: '135 aveneue de Versailles',
  category: 'Italian',
  description: 'Home-made pizza',
  unit_price: 5,
  quantity_max: 6,
  user: t
)
pizza_margarita.remote_photo_url = "https://assets.afcdn.com/recipe/20170105/24149_w1024h768c1cx2592cy1728.jpg"
pizza_margarita.save!

pad_thai = Meal.new(
  name: 'Pad Thai',
  address: '23 avenue Junot',
  category: 'Thaï',
  description: 'Home street food',
  unit_price: 4,
  quantity_max: 8,
  user: t
)
pad_thai.remote_photo_url = "https://minimalistbaker.com/wp-content/uploads/2019/01/Easy-Vegan-Pad-Thai-SQUARE.jpg"
pad_thai.save!

poulet_roti = Meal.new(
  name: 'Poulet roti',
  address: '55 rue de Passy',
  category: 'French',
  description: 'Façon grand Maman',
  unit_price: 5,
  quantity_max: 4,
  user: t
)
poulet_roti.remote_photo_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAT0UjVxccv4Grht-DVsSni6LPiu-IygXv0RsT9noGo42g-q50"
poulet_roti.save!

Order.create!(
  order_quantity: 1,
  pick_up_date: '2019-08-20',
  user: j,
  meal: vegsalad,
)

Order.create!(
  order_quantity: 2,
  pick_up_date: '2019-06-18',
  user: j,
  meal: soup,
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




