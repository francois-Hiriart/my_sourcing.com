require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Product.destroy_all


product_description = ["Le biseau en « Y » de l’aiguille et l’extrémité profilée de la canule en Teflon® (P.T.F.E. = polytétrafluoroéthylène) permettent une ponction sûre et minimisent les risques de traumatismes veineux. Cathéters Courts Veineux Périphériques droits, en Téflon, sans ailettes. Matériel stérile, usage unique. Le cathéter BD Angiocath™ est destiné au cathétérisme veineux périphérique pour la perfusion,la transfusion et comme voie d‘accès lors d’injections intraveineuses.",
"Ce bistouri à lame fixe et à manche plat (ou scalpel) est un instrument généralement utilisé lors des dissections. Il peut également être employé pour réaliser de petites incisions dans des activités nécessitant une bonne précision comme le modélisme. Scalpel en acier inoxydable. Lame convexe.",
"3 modèloes au choix : - Seringue avec aiguille, 2,5 ml - AA 40 21 G x 0.80 - Seringue avec aiguille, 5 ml - AA 40 21 G x 0.80 - Seringue avec aiguille, 10 ml - AA 40 21 G x 0.80",
"Barrette nasale pour une adaptation morphologique : le masque couvre le nez, la bouche et le menton. Sa durée de protection varie entre 3 et 8 heures, mais il est recommandé de ne pas le porter plus de 4 heures. L'humidité du masque peut en effet altérer son efficacité. Le masque FFP2 est dédié à la filtration des aérosols de taille environ égale à 0,6 µm et de gouttelettes.",
"Le gel hydroalcoolique Aniosgel est élaboré par les Laboratoires Anios pour le lavage des mains. Il permet de désinfecter les mains des germes et toutes particules nocives pouvant les attaquer. Ce gel antiseptique est un petit matériel médical de soin hygiénique hydratant pour les mains, utilisé dans le milieu hospitalier. Une fois appliqué sur la peau, ce produit forme une barrière protectrice. Ce gel anti-bactérien est sans parfum, sans colorant et convient parfaitement aux peaux sensibles. Hypoallergénique, il respecte la peau sans l’agresser, ni causer d’irritations."]


product_list = ["Cathéters BD Angiocath",
"Scalpel lame convexe à manche plat",
"Seringue 3 pièces Terumo - La boîte de 100",
"MASQUE FFP2 NORME EN149:2001+A1:2009",
"Gel hydroalcoolique Aniosgel 85 NPC"]

brand_name = ["NMmedical",
"distrimed",
"Terumo",
"medisafe",
"Anios"]

category_list = ["instrument professionel",
"instrument professionel",
"consommable",
"consommable",
"consommable"]

picture_list = ["https://www.pharma-gdd.com/images/catalog/pictures/thumbnails/600/catheters-bd-insyte-381212-1.webp",
"https://media.istockphoto.com/photos/surgical-stainless-steel-metal-scalpel-isolated-on-white-background-picture-id1049488798?k=6&m=1049488798&s=612x612&w=0&h=xcF230xgpjeiqy2ln-6Assjceo29rtA1kBT9pHbsSfE=",
"https://www.dolphitonic.com/2652-large_default/seringue-3-pieces-la-boite-de-100.jpg",
"https://www.delcourt.fr/5977-large_default/masque-ffp2-made-in-france-boite-de-10.jpg",
"https://leprodumedical.com/2657-large_default/gel-hydroalcoolique-aniosgel-85-npc.jpg"]

i = 0


puts "Creating users"
user1 = User.create!(user_name: Faker::Name.name, email: Faker::Internet.email, password: "password")
user2 = User.create!(user_name: "Michel frédérique", email: "test@test.com", password: "azerty")


puts "Creating products"

picture_list.each do |photo|
 photo = URI.open(photo)
 product = Product.new(name: product_list[i],
  description: product_description[i],
  quantity: Faker::Number.between(from: 1, to: 100000),
  unit_price_cents: Faker::Number.number(digits: 2),
  brand: brand_name[i],
  category: category_list[i],
  average_rating: 1,
  user: [user1, user2].sample)
  product.picture.attach(io: photo, filename: "product photo", content_type: "images/jpg")
  product.save!
  i += 1
end






