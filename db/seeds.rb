Review.destroy_all
User.destroy_all
Category.destroy_all
Meal.destroy_all
Order.destroy_all
Ingredient.destroy_all

w = User.new(
  username: 'Winnie',
  email: 'ourson@gmail.com',
  password: 'testtest3',
)
w.remote_photo_url = "https://cdn.laredoute.com/products/641by641/5/1/7/5173a1ef9786d4eb7244f3be6891629e.jpg"
w.save!

j = User.new(
  username: "Javier B.",
  email: "javier@sexy.com",
  password: "bailar"
)
j.remote_photo_url = "https://resize-parismatch.lanmedia.fr/img/var/news/storage/images/paris-match/people-a-z/javier-bardem/6033180-8-fre-FR/Javier-Bardem.jpg"
j.save!

t = User.new(
  username: 'Tinkie Winky',
  email: 'titi@gmail.com',
  password: 'testtest4',
)
t.remote_photo_url = "https://images3.persgroep.net/rcs/C-VymSOxAsrysdoiqEc5oqsue_E/diocontent/148201145/_crop/0/0/1153/650/_fitwidth/694/?appId=21791a8992982cd8da851550a453bd7f&quality=0.9"
t.save!

p = User.new(
  username: 'Paquito',
  email: 'pepito@gmail.com',
  password: 'testtest5',
)
p.remote_photo_url = "http://img.over-blog-kiwi.com/0/82/53/64/20170904/ob_474a15_photo.jpg"
p.save!

d = User.new(
  username: 'Johnny Deep',
  email: 'verydeep@gmail.com',
  password: 'testtest6',
)
d.remote_photo_url = "https://file1.closermag.fr/var/closermag/storage/images/bio-people/biographie-johnny-depp-112279/815563-1-fre-FR/Johnny-Depp_square500x500.jpg"
d.save!

a = User.new(
  username: 'Toinou du 78',
  email: 'toinou@gmail.com',
  password: 'testtest7',
)
a.remote_photo_url = "http://djschoolmetz.com/wp-content/uploads/2017/06/illustration-djschool_wide2.jpg"
a.save!

jenni = User.new(
  username: 'Jenni',
  email: 'sachaychantey@gmail.com',
  password: 'testtest8',
)
jenni.remote_photo_url = "https://i0.wp.com/www.potins.net/wp-content/uploads/2019/08/jennifer-lopez-s-affiche-en-bikini-et-devoile-ses-abdos-de-folie_a5a099fb3fa6ef258ddadaeeb3ba18272c367f67.jpg?resize=800%2C600&ssl=1"
jenni.save!

aurore = User.new(
  username: 'Malval',
  email: 'iloveclermont@gmail.com',
  password: 'testtest9',
)
aurore.remote_photo_url = "https://pbs.twimg.com/profile_images/950897538126831616/W2tzbF3H.jpg"
aurore.save!

cam = User.new(
  username: 'Cameamea',
  email: 'otaku@gmail.com',
  password: 'testtest10',
)
cam.remote_photo_url = "https://toiledefond.net/wp-content/uploads/2015/06/10730205_10205183883742803_2597696856186401850_n.jpg"
cam.save!


CATEGORIES = ["Chinese", "French", "Sushi", "Dessert", "Grandma", "Italian", "Healthy", "Morroccan", "Burger", "Vegan", "Thaï", "Hawaïan"]

CATEGORIES.each do |category|
  Category.create!(name: category)
end
chinese = Category.find_by(name: "Chinese")
french = Category.find_by(name: "French")
sushi = Category.find_by(name: "Sushi")
dessert = Category.find_by(name: "Dessert")
grandma = Category.find_by(name: "Grandma")
italian = Category.find_by(name: "Italian")
healthy = Category.find_by(name: "Healthy")
morroccan = Category.find_by(name: "Morroccan")
burger = Category.find_by(name: "Burger")
vegan = Category.find_by(name: "Vegan")
thai = Category.find_by(name: "Thaï")
hawaian = Category.find_by(name: "Hawaïan")


soup = Meal.new(
  name: 'Chinese soup',
  address: '10 rue des Dames, Paris',
  category: 'Chinese',
  description: 'A delicious soup',
  unit_price: 6,
  quantity_max: 3,
  user: aurore,
)
soup.remote_photo_url = "https://d1doqjmisr497k.cloudfront.net/-/media/mccormick-us/recipes/simply-asia/e/2000/egg_drop_noodle_soup_2000x1125.jpg?vd=20180710T052728Z&hash=3796EEE4205BCF5842BBFC0A9E79DD4A82679CF8"
soup.save!

MealCategory.create(meal: soup, category: chinese)
MealCategory.create(meal: soup, category: grandma)

salad = Meal.new(
  name: 'Ceasar salad',
  address: '200 rue de Rivoli, Paris',
  category: 'Healthy',
  description: 'A healthy salad',
  unit_price: 5,
  quantity_max: 3,
  user: t
)
salad.remote_photo_url = "https://assets.afcdn.com/recipe/20130909/48615_w1024h768c1cx2089cy1393.jpg"
salad.save!

MealCategory.create(meal: salad, category: healthy)

vegsalad = Meal.new(
  name: 'Vege salad',
  address: '10 villa Gaudelet, Paris',
  category: 'Healthy',
  description: 'For vegetables lovers',
  unit_price: 5,
  quantity_max: 4,
  user: j
)
vegsalad.remote_photo_url = "https://www.doitinparis.com/files/2016/recette/06/thumbs-1180x525/salade-semoule.jpg"
vegsalad.save!

MealCategory.create(meal: vegsalad, category: healthy)
MealCategory.create(meal: vegsalad, category: vegan)

pizza_margarita = Meal.new(
  name: 'Pizza margarita',
  address: '135 avenue de Versailles',
  category: 'Italian',
  description: 'Home-made pizza with stuff I bought at the supermarket',
  unit_price: 5,
  quantity_max: 6,
  user: jenni,
)
pizza_margarita.remote_photo_url = "https://assets.afcdn.com/recipe/20170105/24149_w1024h768c1cx2592cy1728.jpg"
pizza_margarita.save!

MealCategory.create(meal: pizza_margarita, category: italian)
MealCategory.create(meal: pizza_margarita, category: grandma)

pad_thai = Meal.new(
  name: 'Pad Thai',
  address: '23 avenue Junot',
  category: 'Thaï',
  description: 'Home street food',
  unit_price: 4,
  quantity_max: 8,
  user: w,
)
pad_thai.remote_photo_url = "https://minimalistbaker.com/wp-content/uploads/2019/01/Easy-Vegan-Pad-Thai-SQUARE.jpg"
pad_thai.save!

MealCategory.create(meal: pad_thai, category: thai)

poulet_roti = Meal.new(
  name: 'Poulet rôti',
  address: '55 rue de Passy',
  category: 'French',
  description: "Enorme poulet fermier façon Grand Maman, d'ailleurs je suis grand-mère mais comme mes petits enfants ces sales ingrats m'appellent jamais je m'ennuie et je fais à bouffer pour 15. \n \n Je précise que c'est bio (j'achète toujours bio pour préserver mon mari qui a la goutte sinon après il gueule comme un putois), en plus je préfère consommer local pour compenser le fait que ma génération ait complètement détruit la planète lol",
  unit_price: 5,
  quantity_max: 4,
  user: d,
)
poulet_roti.remote_photo_url = "https://images.pexels.com/photos/265393/pexels-photo-265393.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
poulet_roti.save!

MealCategory.create(meal: poulet_roti, category: french)
MealCategory.create(meal: poulet_roti, category: grandma)

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
  meal: pad_thai,
)

ingredients = ["Céréales contenant du gluten", "Crustacés", "Oeufs", "Poissons", "Arachides", "Soja", "Lait", "Fruits à coques", "Céleri", "Moutarde", "Graines de sésame"]

ingredients.each do |i|
  Ingredient.create!(name: i)
end

Review.create!(
  rating: 4,
  content: "super bon poulet rôti comme chez Mamie, avec de la purée de patates ça envoie du lourd",
  user: aurore,
  meal: poulet_roti,
)

Review.create!(
  rating: 5,
  content: "c'était tellement bon que j'en ai recommandé et aussi je l'ai recommandé à tous mes amis",
  user: p,
  meal: poulet_roti,
)

Review.create!(
  rating: 3,
  content: "c'est moins bon qu'au KFC",
  user: jenni,
  meal: poulet_roti,
)

Review.create!(
  rating: 1,
  content: "je me suis trompé je voulais un sashimi aubergine en fait",
  user: cam,
  meal: poulet_roti,
)

Review.create!(
  rating: 4,
  content: "COT COOOOT haha",
  user: a,
  meal: poulet_roti,
)
