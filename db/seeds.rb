# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Meal.create!(name: "couscous", description: "Le vendredi, le couscous c’est sacré et cette fois je vous propose la recette du couscous tunisien traditionnellement servi avec des légumes, du poulet ou de la viande rouge. Un plat convivial et familial avec pleins saveurs surtout si on y ajoute la Harissa qui est obligatoire ainsi que des poivrons verts.

Pour nous algériens, tunisiens et marocains manger du couscous est une tradition et un rituel. Il existe plusieurs façon de preparer le couscous algérien : le couscous Kabyle aux légumes vapeurs, le couscous aux fèves et petits pois (mesfouf) qui se déguste sans sauce, le couscous algérien aux légumes et sauce rouge, couscous aux raisins secs (seffa) etc…. Il est dans nos traditions d’accompagner le couscous de babeurre (Lben) ou lait ribot.

En Tunisie comme en Algérie, il existe mille et une façon de preparer le couscous, dans les villes côtières notamment Sfax on aime preparer le couscous aux poissons. Dans d’autres régions il est plus souvent consommé avec de l’agneau et des fruits secs. Si vous êtes à la recherche d’un bon couscous Tunisien authentique la meilleure chose à faire et de vous faire inviter pour le déjeuner par une famille tunisienne :).", address: "1 rue de Rivoli", category: "Moroccan", unit_price: 2, quantity_max: 8, start_availability_date: "2019-08-24", end_availability_date: "2019-08-27", user: User.last)
