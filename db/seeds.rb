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
Order.destroy_all

masque_description = ["Surgical Mask - 3 ply pleated lightweight breathable material. Tested for BFE < 95%. Sanitizing Gel : 99.99% effective sterilization rate",
"We are offering Disposable Doctor Mask. Material: Single Ply Non-Woven. Mask Securing Method:  Earloop, Head Band, Tie On. Color: blue. Application: hospital. Packaging Type: Carton Box, PP Bag",
"Non Woven Dispotrazet Mask with 3 layers of spun with nose pin;With ultrasonic welded ear loops. Jayashree Spun Bond presents a wide range of non woven polypropylene spun bond fabric in front of our clients that has excellent usage in medical scenarios. Material: 3 Ply. Usage/Application:  Coronavirus. Mask Securing Method:  Ear loop. Packaging Type: Box.",
"We offering Disposable Face Mask. The offered face masks are available with bacterial filtration efficiency and plastic coated nose clip for comfort. Our adroit designers use high-grade basic material and the latest technology to manufacture these face masks which reduce the spread of infectious liquid droplets. Apart from this, clients can avail these face masks from us at nominal prices.",
"We have carved a niche amongst the most trusted names in this business, engaged in offering a comprehensive range of 3 Ply Face Mask. Material: Polypropylene. Packaging Type: Box. Number of Ply: 3 Ply.",
"3m 9504 IN FFP2 FACE MASK"]


masque_list = ["HONEYWELL Disposable 3 PLY FACE MASK",
"Z Plus Blue Disposable Doctor Mask",
"3 Ply General Purpose Dispo Tragen non woven face mask",
"Z Plus C-Cure Hospital Disposable Face Mask, For Surgical, 3",
"Polypropylene Disposable 3 Ply Face Mask",
"Disposable 3M 9504 In FFP2 Face Mas"]

masque_brand_name = ["HONEYWELL",
"Z Plus",
"Jayashree",
"Z Plus",
"Phoenix",
"3M"]


masque_picture_list = ["https://5.imimg.com/data5/SELLER/Default/2021/2/RI/PW/XZ/45001431/3-ply-face-mask-500x500.jpg",
"https://5.imimg.com/data5/DI/WP/OR/SELLER-15641972/disposable-doctor-mask-500x500.jpg",
"https://5.imimg.com/data5/KG/OY/UA/SELLER-9173595/sugical-face-mask-500x500.jpg",
"https://4.imimg.com/data4/UH/SE/MY-15641972/disposable-face-mask-500x500.jpg",
"https://5.imimg.com/data5/SELLER/Default/2020/10/KC/DH/NR/54352145/3-ply-face-mask-500x500.jpg",
"https://5.imimg.com/data5/ANDROID/Default/2021/5/TM/DU/FI/9143489/3m-face-mask-500x500-1-jpg-500x500.jpg"]



catheter_description = ["Le biseau en « Y » de l’aiguille et l’extrémité profilée de la canule en Teflon® (P.T.F.E. = polytétrafluoroéthylène) permettent une ponction sûre et minimisent les risques de traumatismes veineux. Catheters Courts Veineux Périphériques droits, en Téflon, sans ailettes. Matériel stérile, usage unique. Le catheter BD Angiocath™ est destiné au cathétérisme veineux périphérique pour la perfusion,la transfusion et comme voie d‘accès lors d’injections intraveineuses.",
"Embryo Transfer Catheter Set. The Semtrac Vision C is a soft embryo transfer catheter, especially designed for ultrasound guided placement. Type: Urethral. Material Type: Plastic. Features: Soft bullet shaped tip to minimize trauma; Individual microscopic quality inspection; One piece economical catheter; Markings to indicate depth; Metal tube inside for better control; Handle with luer lock for a more secure fitting to syringes; Echogenic catheter for optimal visualisation during ultrasound guided transfers. GYNO INFO SEMTRAC SET 4.2 : Guiding catheter (A) length tube OD = 158 mm (± 2 mm) 2.55 mm (± 0.05 mm); Loading catheter (C) length Tube OD = 232 mm (± 2 mm) 1.70 mm (± 0.05 mm); Total volume = 0.23 ml; Total volume minus hub = 0.081 ml. Sterile = ETO sterilized. Quality Control = MEA and LAL.",
"We are widely recognized in this sector due to our premium quality and trendy apparels,which we provide in several colors and designs. Due to the following unique reasons, we are able to carve a niche in this field: Attractive product range, Adroit team of professionals, Positive records, Transparent dealings, Prompt delivery, Well-equipped warehouse, Customized options, Affordable price structure",
"A Unique Paclitaxel Eluting Pta Balloon CatheterLatest Generation Paclitaxel-Eluting Balloon For Peripheral Interventions. Compatible For Both Below And Above The Knee Applications Due To Variable Balloon Size Options. Consistent Treatment Of Peripheral Arterial & Venous Diseases: 3Mg / Mm2 Drug Dosage, <2Um Particles, Contrast Medis As A Drug Carrier, Minimum Drug Loose During Delivery, <90% Drug Transfer To The Target Lession",
"We trust in our passion to create timely and visionary NBDC to meet all the needs and demands of the customers. It is mainly used for biliary duct drainage through nasal passage & treatment of strictures in the ductile system. The product is manufactured in compliance with industry set quality standards by our vendors. These vendors are selected by our skilled professionals after a long market research. Features : Irrigation and drainage, Pigtail shape for better retention, Each set includes a nasal transfer tube & a connecting tube to facilitate."]


catheter_list = ["Catheters BD Angiocath",
"Embryo Transfer Catheter Set",
"Rubber CATH Embryo Transfer Catheter",
"Rubber Paclitaxel Eluting Pta Balloon Catheter",
"UROMED Naso Biliary Catheter (nbdc), For Hospital"]

catheter_brand_name = ["NMmedical",
"Medical Equipment India",
"Rubber CATH Embryo Transfer Catheter",
"C V Technologies Pvt Ltd",
"UROMED"]


catheter_picture_list = ["https://www.pharma-gdd.com/images/catalog/pictures/thumbnails/600/catheters-bd-insyte-381212-1.webp",
"https://4.imimg.com/data4/TK/DS/MY-7159894/semtrac-set-4-2-catheter-500x500.jpg",
"https://5.imimg.com/data5/SELLER/Default/2020/9/ZU/WK/YB/10141310/cath-embryo-transfer-catheter-500x500.jpg",
"https://5.imimg.com/data5/VQ/IV/MF/SELLER-84272073/paclitaxel-eluting-pta-balloon-catheter-500x500.jpg",
"https://5.imimg.com/data5/XC/QD/MY-434358/naso-biliary-catheter-nbdc-500x500.png"]


scalpel_description = ["Ce bistouri à lame fixe et à manche plat (ou scalpel) est un instrument généralement utilisé lors des dissections. Il peut également être employé pour réaliser de petites incisions dans des activités nécessitant une bonne précision comme le modélisme. Scalpel en acier inoxydable. Lame convexe.",
"Ethicon Harmonic Scalpel Handpiece Hp054:GREY 95 Counts. EXCELLENT-CONDITION (Also available in Box-packed!). Other Details. Ethicon Harmonic Scalpel Handpiece(OUT OF BOX). With 100% Warranty. ALSO AVAILABLE IN UNLIMITED COUNTS (LIMITLESS SURGERIES)",
"Ergonomically designed Stainless steel. ISO 7153 specification stainless steel blades. Non-slip Grip for both left and right handed users. Free from phthalates. Not made with natural rubber latex. Rigid closed-end blade guard protects against sharps injuries. Do not recap guard. Premium plastic and packaging materials.",
"Our organization is counted among the most distinguished organizations engaged in manufacturing, supplying and exporting Thumb Scalpels. All these scalpels are manufactured in compliance with the established norms and standards of the industry by using high quality material and modern machines. Our experts supervise these scalpels at the production stages, so as to maintain quality standards and remove defects, if any. These scalpels are available in various specifications and also in customized range as per the requirements of the patrons.",
"THUMB MINI SCALPELSPOST MORTEM KNIVES DISPOSABLE POSTMORTEM KNIVES POSTMORTEM KNIFE HANDLES BIOPSY PUNCH DISPOSABLES AFETY SCALPELS DECA DAVIS BLADE MINI STITCH CUTTERSKIN GRAFT BLADESAFE SINGLE USE SCALPEL MINI SKIN GRAFT BLADE STITCH CUTTERBLADE REMOVERPREP BLADE GOUGE BLADES MINIATURE FINE BLADES/ PODIATRY BLADES"]


scalpel_list = ["Scalpel lame convexe à manche plat",
"J&J Ethicon Harmonic Scalpel Handpiece Hp054: 95 Counts for Hospital",
"Triangular 15 Degrees Surgical Bp Blades/ Thumb scalpel, For Cardiology",
"Ribbel Polythene Thumb Scalpels",
"Mowell Surgical Disposable Scalpels"]

scalpel_brand_name = ["distrimed",
"Ethicon (Johnson & Johnson)",
"Choice of Surgeon, Amkay",
" Ribbel",
"Mowell"]


scalpel_picture_list = ["https://media.istockphoto.com/photos/surgical-stainless-steel-metal-scalpel-isolated-on-white-background-picture-id1049488798?k=6&m=1049488798&s=612x612&w=0&h=xcF230xgpjeiqy2ln-6Assjceo29rtA1kBT9pHbsSfE=",
"https://5.imimg.com/data5/VP/HL/MY-43847306/johnson-and-johnson-ethicon-harmonic-scalpel-handpiece-hp054-500x500.jpg",
"https://5.imimg.com/data5/SELLER/Default/2021/2/LF/QU/BI/65816862/surgical-blade-8-500x500.png",
"https://5.imimg.com/data5/FH/XH/MY-3190652/thumb-scalpels-500x500.jpg",
"https://5.imimg.com/data5/SELLER/Default/2020/12/FE/AU/IX/1181137/surgical-disposable-scalpels-500x500.png"]


seringue_description = ["3 modèloes au choix : - Seringue avec aiguille, 2,5 ml - AA 40 21 G x 0.80 - Seringue avec aiguille, 5 ml - AA 40 21 G x 0.80 - Seringue avec aiguille, 10 ml - AA 40 21 G x 0.80",
"Capacity : 1ml; Country of Origin : Made in India. 1 ml (Luer Slip), 2 ml (Luer Slip/Luer Lock), 3 ml (Luer Slip/Luer Lock),  5 ml (Luer Slip/Lock), 10 ml (Luer Slip/Luer Lock),   20 ml ( Luer Slip),   50 ml ( Luer Slip)",
"MADE IN INDIA Disposable syringes available in variable sizes. 1ml to 50ml sizes available. 21inch to 26inch gauges availalble. custom gauges such as 16 and 18 also available. CE and ISO Certification",
"Features: Bold Scale Markings, Textured Thumb Press And Clear Barrel for Visualization. Usage/Application: For Medical Use. Body Material: Plastic. Color:   Transparent Body. Length: 1 inch. Warning:  Discard After Single Use."
]


seringue_list = ["Seringue 3 pièces Terumo - La boîte de 100",
"Disposable Syringe",
"Disposable Syringes I",
" Plastic Medical Injection Syringe"]

seringue_brand_name = ["Terumo",
"ARRIA INDUSTRIES",
"Topographix Equipments Private Limited",
"EXPERT LABO"]


seringue_picture_list = ["https://www.dolphitonic.com/2652-large_default/seringue-3-pieces-la-boite-de-100.jpg",
"https://5.imimg.com/data5/SELLER/Default/2021/1/OF/YO/SP/28551907/disposable-syringe-500x500.jpg",
"https://5.imimg.com/data5/SELLER/Default/2021/2/XZ/FO/LY/32725524/disposable-syringes-500x500.jpg",
"https://5.imimg.com/data5/TZ/SD/YC/SELLER-62219633/dispensing-syringe-500x500.jpg",
"https://5.imimg.com/data5/SELLER/Default/2021/1/SN/WR/YH/38804379/injection-syringe-500x500.jpg",]


bande_description = ["Our company is widely appreciated for providing Elasto Adhesive Tape to the clients. This product is manufactured using supreme grade basic components and pioneering techniques in tandem with international standards. Offered range is offered in various sizes and dimensions and can also be customized as per the needs of the client. We are Leading Exporter also. .good adhesive. Feature : Skin friendly, Easy to remove, Convenient to use",
"JMS Meditape is Microporous Hypoallergenic Medical Grade Paper Tape, most suitable for surgical dressing & for fixation of Medical devices like Intravenous tubing's, catheters and all other medical devices requiring safe secured adhesion to skin for extended period time. Better adhesion to any part of body. Features : Microporous Hypoallergenic Medical Grade Paper Tape Better adhesion to any part of body, Special bio-compatible polymer adhesive, Gentle to the skin, Latex-free and hypoallergenic for sensitive patients, Highly breathable to maintain skin integrity, Holds well on damp skin for secure placement.",
"We are leading manufacturer and exporter of Adhesive Tape (Zinc Oxide Adhesive Tape). Adhesive Tape consists of a suitable cloth of cotton or rayon or both mixed, evenly spread with self adhesive mass containing zinc oxide. The cloth is finished to good white and is dyed flesh (skin) color with non toxic dye. These are carefully designed by our team of experts using high quality material.",
"Size :   75 mm, Size : 100 mm,   Size : 150 mm",
"eukotape® K supports sensory functions. Wave pattern adhesive allows air to circulate and full mobility is preserved. Extremely thin and skin-friendly, Wave pattern adhesive can support the therapeutic effect, Stretchable, works ideally with the skin‘s natural elasticity, Protective liner for better handling, Polyacrylate adhesive for reliable adhesion, Backing material of cotton, hard wearing and skin friendly. Patient oriented and patient friendly : high user comfort, durable for up to one week‘s use, sports and showering present no problem, easy to remove. Main uses: headache, back pain, lymph edema, muscular pain. 3 sizes and 6 colors: range to suit all needs and indications, discreet skin tone or colored"]


bande_list = ["Elasto Adhesive Bandage Tape",
"White JMS Dressing Tape",
"Medicare White Meditape Adhesive Tape USP, for Clinical",
"Esmarch Rubber Bandage",
"Leukotape BSN Medical"]

bande_brand_name = ["Shubham Pharmaceuticals",
"JMS Range Products",
" Medicare",
"Apothecaries Sundries Manufacturing Co",
" BSN Medical"]


bande_picture_list = ["https://3.imimg.com/data3/IU/OC/MY-7350969/elasto-adhesive-tape-250x250.jpg",
"https://5.imimg.com/data5/JX/AP/MY-1849095/jms-meditape-500x500.jpg",
"https://4.imimg.com/data4/FL/RM/MY-957299/medical-tapes-500x500.jpg",
"https://2.imimg.com/data2/VN/MT/MY-16367/esmarch-rubber-bandage-500x500.jpg",
"https://5.imimg.com/data5/SELLER/Default/2020/10/EF/GD/RH/8488004/20-500x500.jpg"]






puts "Creating users"
user1 = User.create!(user_name: Faker::Name.name, email: "paul@my_sourcing.com", password: "password", role: "buyer")
user2 = User.create!(user_name: "Michel frédérique", email: "test@test.com", password: "azerty", role: "supplier")


puts "Creating masques"

i = 0

masque_picture_list.each do |photo|
 photo = URI.open(photo)
 masque = Product.new(name: masque_list[i],
  description: masque_description[i],
  available_quantity: Faker::Number.between(from: 1, to: 100000),
  unit_price_cents: Faker::Number.number(digits: 2),
  brand: masque_brand_name[i],
  average_rating: 1,
  category: "masque",
  user: user2)
  # masque.picture.attach(io: photo, filename: "product photo", content_type: "images/jpg")
  masque.save!
  order = Order.new(product_quantity: Faker::Number.between(from: 1, to: 100000),
  shipping_date: Faker::Date.between(from: '2021-06-01', to: '2021-06-08'),
  delivery_date: Faker::Date.between(from: '2021-06-23', to: '2021-06-30'),
  price_cents: Faker::Number.number(digits: 2),
  product_id: masque.id,
  user: user1)
  order.save!
  i += 1
end


# puts "Creating catheter"

# i = 0

# catheter_picture_list.each do |photo|
#  photo = URI.open(photo)
#  catheter = Catheter.new(name: catheter_list[i],
#   description: catheter_description[i],
#   available_quantity: Faker::Number.between(from: 1, to: 100000),
#   unit_price_cents: Faker::Number.number(digits: 2),
#   brand: catheter_brand_name[i],
#   average_rating: 1,
#   user: user2)
#   # catheter.picture.attach(io: photo, filename: "product photo", content_type: "images/jpg")
#   catheter.save!
#   i += 1

#   end



# puts "Creating scalpel"

# i = 0

# scalpel_picture_list.each do |photo|
#  photo = URI.open(photo)
#  scalpel = Scalpel.new(name: scalpel_list[i],
#   description: scalpel_description[i],
#   available_quantity: Faker::Number.between(from: 1, to: 100000),
#   unit_price_cents: Faker::Number.number(digits: 2),
#   brand: scalpel_brand_name[i],
#   average_rating: 1,
#   user: user2)
#   # scalpel.picture.attach(io: photo, filename: "product photo", content_type: "images/jpg")
#   scalpel.save!
#   i += 1

#   end


# puts "Creating seringue"

# i = 0

# seringue_picture_list.each do |photo|
#  photo = URI.open(photo)
#  seringue = Seringue.new(name: seringue_list[i],
#   description: seringue_description[i],
#   available_quantity: Faker::Number.between(from: 1, to: 100000),
#   unit_price_cents: Faker::Number.number(digits: 2),
#   brand: seringue_brand_name[i],
#   average_rating: 1,
#   user: user2)
#   # seringue.picture.attach(io: photo, filename: "product photo", content_type: "images/jpg")
#   seringue.save!
#   i += 1

#   end


# puts "Creating bande"

# i = 0

# bande_picture_list.each do |photo|
#  photo = URI.open(photo)
#  bande = Bande.new(name: bande_list[i],
#   description: bande_description[i],
#   available_quantity: Faker::Number.between(from: 1, to: 100000),
#   unit_price_cents: Faker::Number.number(digits: 2),
#   brand: bande_brand_name[i],
#   average_rating: 1,
#   user: user2)
#   # bande.picture.attach(io: photo, filename: "product photo", content_type: "images/jpg")
#   bande.save!
#   i += 1
# end

# puts "creating orders"

# category_name = ["masque", "bande", "catheter", "seringue", "scalpel"]

# category_name.each do |category|

# order = Order.new(product_quantity: Faker::Number.between(from: 1, to: 100000),
#   shipping_date: Faker::Date.between(from: '2021-06-01', to: '2021-06-08'),
#   delivery_date: Faker::Date.between(from: '2021-06-23', to: '2021-06-30'),
#   price_cents: Faker::Number.number(digits: 2),
#   product_type: category_name[i],
#   product_id: Faker::Number.number(digits: 1),
#   user: user1)
#   order.save!
# end
