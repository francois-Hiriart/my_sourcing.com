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


# gant_description = []

# gant_list = []

# gant_brand_name = []

# gant_picture_list = []




masque_description = ["Très haute FILTRATION + de 99 % [Livraison EXPRESS Grand Stock Disponible] 2,83 € HT LES 50 Masques Chirurgicaux. Vente en ligne de Masques Chirurgicaux Jetables de Qualité : 3 plis couleur bleue Type 2 EN14683:2019.",
"Masque chirurgical - Matériau léger et respirant à 3 plis. Testé pour un BFE < 95%. Gel désinfectant : taux de stérilisation efficace de 99,99 %.",
"Nous offrons un masque de médecin jetable. Matériau : Non-tissé à une couche. Méthode de fixation du masque :  Boucle d'oreille, bandeau, attache. Couleur : bleu. Application : hôpital. Type d'emballage : Boîte en carton, sac PP",
"Masque Dispotrazet non tissé avec 3 couches de filé avec pince-nez;Avec boucles d'oreille soudées par ultrasons. Jayashree Spun Bond présente une large gamme de tissus non tissés en polypropylène devant nos clients qui ont un excellent usage dans les scénarios médicaux. Matériau : 3 Ply. Utilisation/Application :  Coronavirus. Méthode de fixation du masque :  Boucle d'oreille. Type d'emballage : Boîte.",
"Nous offrons des masques jetables. Les masques faciaux proposés sont dotés d'une efficacité de filtration bactérienne et d'un pince-nez en plastique pour plus de confort. Nos concepteurs adroits utilisent des matériaux de base de haute qualité et les dernières technologies pour fabriquer ces masques faciaux qui réduisent la propagation des gouttelettes de liquide infectieux. En outre, les clients peuvent se procurer ces masques auprès de nous à des prix nominaux.",
"Nous nous sommes taillés une place parmi les noms les plus fiables dans ce domaine, en offrant une gamme complète de masques à 3 épaisseurs. Matériau : Polypropylène. Type d'emballage : Boîte. Nombre de plis : 3 plis. MASQUE FACE 3m 9504 IN FFP2",
"Pour les professionnels de la santé et de l'industrie agroalimentaire. Ce masque chirurgical type 2R garantit une protection maximale grâce à son Efficacité de Filtration Bactérienne (BFE) à 99%. Masque en polypropylène non tissé, matière résistante aux aérosols, aux liquides et au sang. Masque jetable conforme EN 14683 type 2R",
"Type FFP2, Efficacité de filtration bactérienne (EFB) EN 149:2001+A1:2009 > 95 %, Directive européenne (EPI) 2016/425 Catégorie III, Usage unique, Emballage individuel, 5 couches filtrantes",
"L'attache pour masques chirurgicaux et textile permet de maintenir les élastiques de votre masque textile ou chirurgical directement sur ce support et non plus autour de vos oreilles.",
"Adaptés aux enfants à partir de 6 ans. Masques enfants : 3 plis, Non stériles, Usage unique, Dimensions 14.5 cm x 9.5 cm, BFE>98%, Normes ISO 13485, Mandataire Européen, EN ISO 14971 :2019, EN ISO 15223-1 :2017, à partir de 6 ans",
"Accessoire permettant de soulager les oreilles lors du port prolongé de masque de protection. Cet extenseur dispose de 4 réglages possibles afin d'ajuster le masque à votre visage. Matière : polyéthylène. Dimensions : 14,0 x 2,5 cm.",
"Les masques de protection respiratoire FFP2 TexiShield apportent une protection exceptionnelle grâce à ses performances de filtration > 99% pour les particules de 0,6 μm. Présence de deux élastiques garantis sans latex avec attache à l'arrière de la tête ainsi qu'une barrette nasale réglable. Fabriqué en France.",
"Destinés à l’administration d’oxygène par voie nasale ou orale, les masques à oxygène moyenne concentration See-Thru ont été conçus pour garantir un confort maximum et une grande simplicité d’utilisation.",
"Destinés à l’administration d’oxygène par voie nasale ou orale, les masques à oxygène haute concentration See-Thru ont été conçus pour garantir un confort maximum et une grande simplicité d’utilisation. La valve anti-retour située entre le masque et le sac évite la ré-inhalation d’oxygène. Dotés d’un évent expiratoire ou évent de sécurité situé sur le masque pour permettre une entrée d’air.",
"Ce masque est utilisé pour protéger son porteur des aérosols solides ou liquides (poussières, fumées, aérosols aqueux, virus, bactéries, etc.) en filtrant les particules. La barrette nasale est ajustable et rembourrée pour un plus grand confort. Les attaches latérales assurent un maintien optimisé, permettant une adaptation parfaite aux différentes morphologies."]


masque_list = ["Masque 3 PLY",
"Masque Z+ bleu",
"Masque 3 Ply",
"Masque Z+ C-Cure",
"Masque 3 plis",
"Masque 3M FFP2",
"Masque protection",
"Attache masques",
"Masques enfants ii",
"Attachemasques",
"Masques FFP2",
"Masques FFP2",
"Masque chirurgical type 2R",
"Masques oxygène moyenne concentration",
"Masques oxygène haute concentration"]

masque_brand_name = ["HONEYWELL",
"Z Plus",
"Jayashree",
"Z Plus",
"Phoenix",
"3M",
"securimed",
"Bastide",
"Bastide",
"Bastide",
"Distrimed",
"TexiShield",
"Teleflex",
"Teleflex",
"Paul Boyé technologies"]


masque_picture_list = ["https://5.imimg.com/data5/SELLER/Default/2021/2/RI/PW/XZ/45001431/3-ply-face-mask-500x500.jpg",
"https://5.imimg.com/data5/DI/WP/OR/SELLER-15641972/disposable-doctor-mask-500x500.jpg",
"https://5.imimg.com/data5/KG/OY/UA/SELLER-9173595/sugical-face-mask-500x500.jpg",
"https://4.imimg.com/data4/UH/SE/MY-15641972/disposable-face-mask-500x500.jpg",
"https://5.imimg.com/data5/SELLER/Default/2020/10/KC/DH/NR/54352145/3-ply-face-mask-500x500.jpg",
"https://5.imimg.com/data5/ANDROID/Default/2021/5/TM/DU/FI/9143489/3m-face-mask-500x500-1-jpg-500x500.jpg",
"https://cdn-01.media-brady.com/store/sefr/media/catalog/product/s/e/sefr_102wjf_16_std.lang.all.jpg",
"https://www.bastideleconfortmedical.com/project/resources/img/original/ffp2-ok.jpg",
"https://www.bastideleconfortmedical.com/project/resources/img/type8/protegeoreillemasques.jpg",
"https://www.bastideleconfortmedical.com/project/resources/img/original/masquesenfants2.jpg",
"https://www.distrimed.com/images/imagesmulti/032051_1_b.jpg",
"https://www.distrimed.com/images/imagesmulti/173101_120112_b.jpg",
"https://sc04.alicdn.com/kf/Hcac5a522ca874c4d9d9d1961a7f5d04fM.jpg",
"https://www.realme.fr/7800-large_default/masque-oxygene-haute-concentration-le-carton-de-50.jpg",
"https://france-masque.fr/wp-content/uploads/2021/01/masque-paul-boye-FFP2--scaled.jpg"]



catheter_description = ["Le biseau en « Y » de l’aiguille et l’extrémité profilée de la canule en Teflon® (P.T.F.E. = polytétrafluoroéthylène) permettent une ponction sûre et minimisent les risques de traumatismes veineux. Catheters Courts Veineux Périphériques droits, en Téflon, sans ailettes. Matériel stérile, usage unique. Le catheter BD Angiocath™ est destiné au cathétérisme veineux périphérique pour la perfusion,la transfusion et comme voie d‘accès lors d’injections intraveineuses.",
"Set de cathéters de transfert d'embryon. Le Semtrac Vision C est un cathéter de transfert d'embryon souple, spécialement conçu pour un placement guidé par échographie. Type : Urétral. Type de matériau : Plastique. Caractéristiques : Extrémité souple en forme de balle pour minimiser le traumatisme ; Inspection microscopique individuelle de la qualité ; Cathéter économique d'une seule pièce ; Marquages pour indiquer la profondeur ; Tube métallique à l'intérieur pour un meilleur contrôle ; Poignée avec luer lock pour une fixation plus sûre ; Cathéter échogène pour une visualisation optimale lors des transferts guidés par ultrasons. GYNO INFO SEMTRAC SET 4.2 : Cathéter de guidage (A) longueur tube OD = 158 mm (± 2 mm) 2,55 mm (± 0,05 mm) ; Cathéter de chargement (C) longueur tube OD = 232 mm (± 2 mm) 1,70 mm (± 0,05 mm) ; Volume total = 0,23 ml ; Volume total moins le moyeu = 0,081 ml. Stérile = stérilisé par ETO. Contrôle de qualité = MEA et LAL.",
"Nous sommes largement reconnus dans ce secteur en raison de la qualité supérieure et de la tendance de nos vêtements, que nous proposons en plusieurs couleurs et modèles. Grâce aux raisons uniques suivantes, nous sommes en mesure de nous tailler une place dans ce domaine : Une gamme de produits attrayante, une équipe de professionnels compétents, des résultats positifs, des relations transparentes, une livraison rapide, un entrepôt bien équipé, des options personnalisées, une structure de prix abordable.",
"Un cathéter à ballonnet Pta à élution de Paclitaxel uniqueCathéter à ballonnet à élution de Paclitaxel de dernière génération pour les interventions périphériques. Compatible avec les applications au-dessous et au-dessus du genou grâce aux options de taille de ballonnet variable. Traitement cohérent des maladies artérielles et veineuses périphériques : Dosage du médicament de 3Mg/Mm2, particules de <2Um, médicament de contraste comme vecteur du médicament, perte minimale du médicament pendant l'administration, transfert du médicament à la lésion cible de <90%.",
"Nous avons confiance en notre passion pour créer des NBDC opportuns et visionnaires pour répondre à tous les besoins et demandes des clients. Il est principalement utilisé pour le drainage du canal biliaire à travers le passage nasal et le traitement des rétrécissements dans le système ductile. Le produit est fabriqué en conformité avec les normes de qualité de l'industrie par nos fournisseurs. Ces fournisseurs sont sélectionnés par nos professionnels qualifiés après une longue étude de marché. Caractéristiques : Irrigation et drainage, Forme en queue de cochon pour une meilleure rétention, Chaque ensemble comprend un tube de transfert nasal & un tube de connexion pour faciliter....",
"Le cathéter BD Insyte est destiné au cathétérisme veineux périphérique pour la perfusion, la transfusion et comme voie d’accès lors d’injections intraveineuses. Le cathéter BD Insyte bénéficie des avantages d’un biomatériau hémocompatible : le Vialon. La grande résistance du Vialon permet une excellente pénétration dont la force est inférieure de 50% environ par rapport à celles des cathéters traditionnels en Téflon.",
"Ce cathéter à paroi mince en polyuréthane est doté d'une aiguille à affûtage de type back-cut. Cet affûtage permet une introduction plus facile de l'aiguille dans la peau et la veine du patient, indépendamment de l'angle de ponction. L'insertion du cathéter est plus facile pour le personnel soignant et moins désagréable pour le patient.",
"Le cathéter BD Saf-T-Intima est un cathéter de sécurité de type épicrânien. Il est utilisé pour la perfusion longue durée intraveineuse et sous-cutanée. Il bénéficie d'un biomatériau hémocompatible qui s'assouplit à la chaleur corporelle (BD Vialon).",
"Avec une aiguille ultrafine à double biseau et un lubrifiant de qualité médicale, le cathéter court à ailettes Surflo W permet une pénétration et une insertion en douceur dans les tissus lors des perfusions et transfusions. Sa chambre de visualisation transparente facilite le contrôle du reflux sanguin, attestant de la position intraveineuse de l'extrémité du trocart.",
"Un cathéter périphérique intraveineux doté d'une canule en polyuréthane (biomatériau hémocompatible qui s’assouplit dans la veine pour un cathétérisme de longue durée) à paroi fine avec 3 bandes radio-opaques. Sa surface est lisse et souple pour diminuer les risques de thromboses et de phlébites."]


catheter_list = ["Cathéters BD Angiocath",
"Jeu de cathéters pour le transfert d'embryons",
"Cathéter de transfert d'embryon CATH en caoutchouc",
"Cathéter à ballonnet Pta à élution de paclitaxel en caoutchouc",
"UROMED Naso Biliary Cathéter (nbdc), pour l'hôpital",
"Cathéter sans ailette - BD Insyte",
"Cathéter droit avec ailettes + site - Néo Delta Ven 2 Pur",
"Cathéter de sécurité microperfuseur BD Saf-T-Intima",
"Cathéters droits avec ailette - Terumo Surflo w",
"Cathéter droit sans aillette - Néo Delta Ven T Pur"]

catheter_brand_name = ["NMmedical",
"Medical Equipment India",
"Rubber CATH Embryo Transfer Catheter",
"C V Technologies Pvt Ltd",
"UROMED",
"Becton Dickinson",
"Euromedis",
"Becton Dickinson",
"Terumo",
"Euromedis",
]


catheter_picture_list = ["https://www.energie-medical.fr/5475-large_default/catheter-bd-angiocath-iv.jpg",
"https://4.imimg.com/data4/TK/DS/MY-7159894/semtrac-set-4-2-catheter-500x500.jpg",
"https://5.imimg.com/data5/SELLER/Default/2020/9/ZU/WK/YB/10141310/cath-embryo-transfer-catheter-500x500.jpg",
"https://5.imimg.com/data5/VQ/IV/MF/SELLER-84272073/paclitaxel-eluting-pta-balloon-catheter-500x500.jpg",
"https://5.imimg.com/data5/XC/QD/MY-434358/naso-biliary-catheter-nbdc-500x500.png",
"https://static.praxisdienst.com/out/pictures/generated/product/1/1200_1200_40/138448_bd_neoflon_1.jpg",
"https://www.phimedical.fr/111594-large_default/catheter-droit-securise-avec-ailette-et-site-d-injection-selfsafe-2.jpg",
"https://static.praxisdienst.com/out/pictures/generated/product/1/1200_1200_40/138296_venflon_pro_safety_orange_1.jpg",
"https://www.bastideleconfortmedical.com/project/resources/img/type8/100257-bd-insyte-w-catheter-24g.jpg",
"https://www.phimedical.fr/111517-large_default/catheter-neo-delta-ven-t-pur-boite-de-50.jpg",
]


scalpel_description = ["Ce bistouri à lame fixe et à manche plat (ou scalpel) est un instrument généralement utilisé lors des dissections. Il peut également être employé pour réaliser de petites incisions dans des activités nécessitant une bonne précision comme le modélisme. Scalpel en acier inoxydable. Lame convexe.",
"Pièce à main pour bistouri Ethicon Harmonic Hp054:GREY 95 pièces. EXCELLENTE-CONDITION (Disponible aussi en boîte !). Autres détails. Pièce à main Ethicon Harmonic Scalpel (HORS BOITE). Avec 100% de garantie. AUSSI DISPONIBLE EN NOMBRE ILLIMITÉ (CHIRURGIES ILLIMITÉES).",
"Conception ergonomique en acier inoxydable. Lames en acier inoxydable conformes à la norme ISO 7153. Poignée antidérapante pour les gauchers et les droitiers. Sans phtalates. Non fabriqué avec du latex de caoutchouc naturel. Le protège-lame rigide à bout fermé protège contre les blessures par objets tranchants. Ne pas recapuchonner la protection. Plastique et matériaux d'emballage de première qualité.",
"Notre organisation est comptée parmi les organisations les plus distinguées engagées dans la fabrication, la fourniture et l'exportation de Scalpels à pouce. Tous ces scalpels sont fabriqués en conformité avec les normes et standards établis de l'industrie en utilisant des matériaux de haute qualité et des machines modernes. Nos experts supervisent ces scalpels lors des étapes de production, afin de maintenir les normes de qualité et d'éliminer les défauts, le cas échéant. Ces scalpels sont disponibles dans diverses spécifications et également dans une gamme personnalisée selon les exigences des clients.",
"mini scalpels pouce couteaux post mortem couteaux post mortem jetables poignées de couteaux post mortem poinçon de biopsie jetables scalpels de sécurité lame deca davis mini coupeur de point lames de greffe de peau bistouri à usage unique mini lame de greffe de peau coupeur de point enlèvement de la lame lames de gouge lames miniatures fines / lames de podologie.",
"Ce manche de Bistouri en acier inoxydable est robuste et offre une bonne prise en main. Il permet de réaliser des incisions précises dans un cadre chirurgical ou autre.",
"Ce manche de Bistouri en acier inoxydable est un instrument chirurgical réutilisable, utilisé avec des lames jetables pour réaliser des incisions. Il est compatible avec les lames n° 10 à 15. (A noter : pour limiter les risques de coupure, il est recommandé d'utiliser un instrument de type pince lors du montage et démontage des lames).",
"Ces lames de bistouris Swann-Morton n° 24 sont légèrement plus arrondies que les modèles n° 23. Elles sont utilisées pour réaliser de longues incisions en chirurgie générale ou lors d'autopsies.",
"Ces bistouris Swann-Morton UR11, à usage unique, sont conçus pour optimiser la sécurité des professionnels de santé pendant et après la réalisation d'incisions. Pendant leur utilisation, les rainures placées sur le manche et sur le bouton poussoir de la lame garantissent une bonne tenue en main. Après leur utilisation, la lame du bistouri peut être rétractée et bloquée dans le manche (un clic audible confirme la position rentrée de la lame). Le bistouri peut alors être manipulé sans danger et placé dans un collecteur adapté.",
"Composés d'un manche en plastique (polystyrolène à haut impact d'usage général) monté avec une lame en acier inoxydable de taille 24, ces bistouris jetables sont prêt à l'emploi. La lame n° 24 est légèrement plus large que la n°23. Elle est utilisée pour réaliser de longues incisions en chirurgie générale ou lors d'autopsies"]


scalpel_list = ["Scalpel lame convexe à manche plat",
"Scalpel, pièce à main pour bistouri J&J Ethicon Harmonic Hp054 : 95 pièces pour l'hôpital",
"Lames de scalpel triangulaires à 15 degrés, pour la cardiologie.",
"Scalpels à pouce en polyéthylène Ribbel",
"Scalpels chirurgicaux jetables Mowell",
"Manche de scalpel N°4",
"Manche de scalpel N°3",
"Lames de scalpel Swann Morton N°24",
"Scalpels sécurisés stériles Swann Morton lame rétractable UR11",
"Bistouris stériles à usage unique U24 (boîte de 10)"]

scalpel_brand_name = ["distrimed",
"Ethicon (Johnson & Johnson)",
"Amkay",
"Ribbel",
"Mowell",
"Comed",
"Comed",
"Swan Norton",
"Swan Norton",
"Swan Norton"]


scalpel_picture_list = ["https://www.label-blouse.net/34926-thickbox_default/bistouri-fixe-manche-plat-lame-convexe.jpg",
"https://5.imimg.com/data5/VP/HL/MY-43847306/johnson-and-johnson-ethicon-harmonic-scalpel-handpiece-hp054-500x500.jpg",
"https://5.imimg.com/data5/SELLER/Default/2021/2/LF/QU/BI/65816862/surgical-blade-8-500x500.png",
"https://5.imimg.com/data5/FH/XH/MY-3190652/thumb-scalpels-500x500.jpg",
"https://5.imimg.com/data5/SELLER/Default/2020/12/FE/AU/IX/1181137/surgical-disposable-scalpels-500x500.png",
"https://www.comed.fr/produit/image/0000/0106/moyenne/C1%20200%2003-04%20(2).jpg",
"https://www.ipp-pharma.net/boutique/1304-large_default/manche-de-bistouri-mjk.jpg",
"https://www.dentaltix.com/fr/sites/default/files/styles/thumbnail/public/bisturi-15.jpg?itok=Hk0zbOJQ,",
"https://www.girodmedical.com/media/catalog/product/cache/5b155edbcf0169fd7cec967d14c80ba5/u/1/u11_2.jpg",
"https://medical-thiry.fr/wp-content/uploads/2020/01/bistouris-a-usage-unique-n10-swann-morton-conditionnement-par-10.jpg"]


seringue_description = ["Seringue stérile à usage unique de 1 ml 3 pièces en polypropylène / polystyrène sans latex, G26 abrv aiguille 12 mm, embout Luer central, valeur de l’échelle 2 I.E., double bague d’étanchéité, butée du piston sécurisée, paquet distributeur de 100 pièces. Matériel médical CE",
"3 modèloes au choix : - Seringue avec aiguille, 2,5 ml - AA 40 21 G x 0.80 - Seringue avec aiguille, 5 ml - AA 40 21 G x 0.80 - Seringue avec aiguille, 10 ml - AA 40 21 G x 0.80.",
"Capacité : 1ml ; Pays d'origine : Fabriqué en Inde. 1 ml (Luer Slip), 2 ml (Luer Slip/Luer Lock), 3 ml (Luer Slip/Luer Lock), 5 ml (Luer Slip/Lock), 10 ml (Luer Slip/Luer Lock), 20 ml ( Luer Slip), 50 ml ( Luer Slip).",
"fabriqué en inde seringues jetables disponibles en tailles variables. tailles de 1ml à 50ml disponibles. les calibres de 21 à 26 pouces sont disponibles. les calibres personnalisés tels que 16 et 18 sont également disponibles. certification CE et ISO.",
"Caractéristiques : Marquage de l'échelle en gras, pression du pouce texturée et baril transparent pour la visualisation. Utilisation/application : Pour usage médical. Matériau du corps : Plastique. Couleur : Corps transparent. Longueur : 1 pouce. Avertissement : Jeter après usage unique.",
"Ces seringues transparentes à usage unique sont conçues pour la mésothérapie. Elles sont largement utilisées en traumatologie du sport, en médecine esthétique et dans le traitement de la douleur pour réaliser des injections locales superficielles.",
"Ces seringues montées PIC sont destinées aux injections ou aux prélèvements (selon l'aiguille choisie). Stériles jetables, apyrogènes et non toxique, elles sont équipées d'un joint en caoutchouc triple contact avec blocage du piston pour prévenir des fuites accidentelles pendant l'aspiration. Leur cylindre haute transparence est doté d'une graduation très lisible, autorisant un dosage précis.",
"La seringue BD Safetyglide est une seringue de précision avec aiguille sertie permettant l'injection en intradermique ou en sous-cutanéee. Elle est composée d'une aiguille hypodermique classique et d'un dispositif de sécurité connecté à l'embase. La seringue BD Safetyglide s'active d'une seule main, le mécanisme de sécurité est irréversible.",
"Les seringues à insuline Micro-Fine sont disponibles en plusieurs formats : 0,3 ml , 0,5 ml et 1ml. Chaque seringue comporte des graduations très visibles correspondant à des doses précises (unités) d'insuline. Le choix d'un modèle de seringue est réalisé en fonction du nombre d'unités d'insuline à prendre dans le cadre d'un traitement.",
"Ces seringues pré-montées sont préconisées pour les injections intradermiques de petits volumes de tuberculine. Elles sont dotées d'une aiguille haute pénétration qui diminue la douleur ressentie."]


seringue_list = ["SERINGUE 1 ml 3P OMNIFIX 100 DUO montée",
"Seringue 3 pièces Terumo - La boîte de 100",
"Seringues à usage unique",
"Seringues à usage unique I",
"Seringue d'injection médicale en plastique",
"Seringues de mésothérapie PIC",
"Seringues montées stériles PIC",
"Seringues à tuberculine BD Safetyglide",
"Seringues à insuline BD Micro-Fine",
"Seringues à tuberculine 1 ml"]

seringue_brand_name = ["Braun Medical",
"Terumo",
"Arria Industries",
"Topographix Equipments",
"Expert Labo",
"PIC",
"PIC",
"Becton Dickinson",
"Becton Dickinson",
"PIC"]


seringue_picture_list = ["https://123medical.fr/wp-content/uploads/2020/10/123medical_seringue-3p-omnifix-100duo-bbraun.jpg",
"https://5.imimg.com/data5/SELLER/Default/2021/1/OF/YO/SP/28551907/disposable-syringe-500x500.jpg",
"https://5.imimg.com/data5/SELLER/Default/2021/2/XZ/FO/LY/32725524/disposable-syringes-500x500.jpg",
"https://5.imimg.com/data5/TZ/SD/YC/SELLER-62219633/dispensing-syringe-500x500.jpg",
"https://5.imimg.com/data5/SELLER/Default/2021/1/SN/WR/YH/38804379/injection-syringe-500x500.jpg",
"https://www.distrimed.com/images/imagesmulti/070191_1_m.jpg",
"https://www.equipmedical.com/media/cache/product_img/org-19168-bd-seringue-2-ml.jpg",
"https://labelians.fr/media/catalog/product/cache/c687aa7517cf01e65c009f6943c2b1e9/3/9/39478_1.jpg",
"https://www.techniciendesante.fr/boutique/28395-large_default/7498-seringue-a-insuline-bd-micro-fine-tm-29g-1cc-la-boite-de-200-.jpg",
"https://www.drexcomedical.fr/1498-large_default/seringues-nue-1-ml.jpg"]


bande_description = ["Notre société est largement appréciée pour fournir du ruban adhésif Elasto à ses clients. Ce produit est fabriqué en utilisant des composants de base de qualité supérieure et des techniques d'avant-garde conformes aux normes internationales. La gamme offerte est proposée dans différentes tailles et dimensions et peut également être personnalisée selon les besoins du client. Nous sommes également un exportateur de premier plan. .bon adhésif. Caractéristique : Respectueux de la peau, facile à enlever, pratique à utiliser.",
"JMS Meditape est un ruban de papier microporeux hypoallergénique de qualité médicale, qui convient parfaitement aux pansements chirurgicaux et à la fixation de dispositifs médicaux tels que les tubes intraveineux et les autres dispositifs médicaux nécessitant une adhésion sûre et sécurisée à la peau pendant une période prolongée. Meilleure adhérence à toute partie du corps. Caractéristiques : Ruban papier microporeux hypoallergénique de qualité médicale Meilleure adhésion à n'importe quelle partie du corps, adhésif polymère spécial biocompatible, doux pour la peau, sans latex et hypoallergénique pour les patients sensibles, très respirant pour maintenir l'intégrité de la peau, tient bien sur la peau humide pour un placement sûr.",
"Nous sommes le principal fabricant et exportateur de ruban adhésif (ruban adhésif d'oxyde de zinc). Le ruban adhésif est constitué d'un tissu approprié en coton ou en rayonne, ou les deux, mélangé et uniformément étalé avec une masse auto-adhésive contenant de l'oxyde de zinc. Le tissu est fini en blanc et est teinté couleur chair (peau) avec une teinture non toxique. Ces produits sont soigneusement conçus par notre équipe d'experts qui utilisent des matériaux de haute qualité.",
"Taille : 75 mm, Taille : 100 mm, Taille : 150 mm.",
"Eukotape® K soutient les fonctions sensorielles. L'adhésif en forme de vague permet la circulation de l'air et préserve la mobilité totale. Extrêmement fin et respectueux de la peau, l'adhésif en forme de vague peut soutenir l'effet thérapeutique, extensible, fonctionne idéalement avec l'élasticité naturelle de la peau, revêtement protecteur pour une meilleure manipulation, adhésif polyacrylate pour une adhésion fiable, support en coton, résistant et respectueux de la peau. Orienté patient et convivial : grand confort d'utilisation, durable jusqu'à une semaine d'utilisation, le sport et la douche ne posent aucun problème, facile à enlever. Principales utilisations : maux de tête, douleurs dorsales, œdème lymphatique, douleurs musculaires. 3 tailles et 6 couleurs : gamme adaptée à tous les besoins et à toutes les indications, discret sur la peau ou coloré.",
"Pansement tubulaire pour doigt composé d'un jersey coton et d’une mousse de protection en polyuréthane. Tailles disponibles : Type A - Grand Type B - Moyen Type C - Enfant",
"Bandes fabriquées en pur coton. Longueur 4 m - largeur 5 à 20 cm. Présentation individuelle sous cellophane. Maintien de pansement - bandages. Stérilisation possible de la bande de crêpe nue : oxyde d'éthylène, rayonnement ou vapeur.",
"Filet Tg-Fix permettant la fixation de pansements de tout type. Ce filet tubulaire à haute élasticité permettant d'assurer un maintien sûr, même au niveau des plis et des parties du corps en mouvement. Filet à larges mailles très perméable à l'air. Pour inspecter la plaie et remplacer la compresse, il suffit généralement de soulever une partie du tube ou de le replier.",
"La bande extensible Flexa Elast est indiquée en cas d'entorse, de luxation, de contusion, de tendinite ou d'élongation, pour appliquer une compression constante de basse intensité, réduire les mouvements des articulations et garantir un maintien nécessaire. Légère, douce et souple, elle contient un pourcentage élevé de coton pour une bonne tolérance cutanée. Grâce à la surpiqûre des bords de la bande, elle ne s'effiloche pas et ne s'enroule pas lorsqu'elle est tendue. Clip de fixation fourni.",
"La bande Flexa Max de PIC est une bande élastique réutilisable qui s'utilise principalement sur les membres inférieurs et assure une compression homogène importante et de longue durée. Elle est simple à mettre en place (clip de fixation fourni) et à ajuster, pour obtenir le niveau de compression désiré. Ses bords cousus ne s'effilochent pas et ne s'enroulent pas quand le bandage est tendu. Son pourcentage élevé de coton lui assure une bonne tolérance cutanée. D'entretien facile, elle est lavable en machine à 40°C."]


bande_list = ["Bande adhésive Elasto",
"Bande de pansement JMS blanche",
"Bande adhésive Medicare Meditape blanc USP, pour les cliniques",
"Bandage caoutchouc Esmarch",
"Leukotape (bande) BSN Medical",
"Bandage stérile pour doigts Singlefix",
"Bandes de crêpe Tetra - Sachet de 5",
"Filet tubulaire TG-FIX - rouleau de 4m",
"Bande élastique basse compression Flexa Elast",
"Bande de compression forte Flexa Max"]

bande_brand_name = ["Shubham Pharmaceuticals",
"JMS Range Products",
"Medicare",
"Apothecaries Sundries Manufacturing Co",
"BSN Medical",
"Euromedis",
"Tetra",
"Lohmann & Rauscher",
"PIC",
"PIC"]


bande_picture_list = ["https://3.imimg.com/data3/IU/OC/MY-7350969/elasto-adhesive-tape-250x250.jpg",
"https://5.imimg.com/data5/JX/AP/MY-1849095/jms-meditape-500x500.jpg",
"https://4.imimg.com/data4/FL/RM/MY-957299/medical-tapes-500x500.jpg",
"https://2.imimg.com/data2/VN/MT/MY-16367/esmarch-rubber-bandage-500x500.jpg",
"https://5.imimg.com/data5/SELLER/Default/2020/10/EF/GD/RH/8488004/20-500x500.jpg",
"http://www.laboratoires-euromedis.fr/_upload/ressources/cata-2017/pansement/singlefix.jpg",
"https://www.herlimedical.com/media/catalog/product/cache/2/image/1800x/040ec09b1e35df139433887a97daa66f/c/r/crepe_windel_1_1_1.jpg",
"https://static.praxisdienst.com/out/pictures/generated/product/1/1200_1200_40/lohmann_rauscher_tg_fix_netzverband_603675_1.jpg",
"https://static.praxisdienst.com/out/pictures/generated/product/1/1200_1200_40/lohmann_rauscher_mollelast_haft_latexfrei_603680.jpg",
"https://www.pharmacyclub.net/imgs/productos_parafarmacia/resized/300x300/8058090006329.jpg"]






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
  unit_price_cents: Faker::Commerce.price(range: 0.5..3.0, as_string: true) + "par unité",
  brand: masque_brand_name[i],
  average_rating: 1,
  category: "masque",
  user: user2)
  masque.picture.attach(io: photo, filename: "product photo", content_type: "images/jpg")
  masque.save!
  order = Order.new(product_quantity: Faker::Number.between(from: 1, to: 100000),
  shipping_date: Faker::Date.between(from: '2021-06-01', to: '2021-06-08'),
  delivery_date: Faker::Date.between(from: '2021-06-23', to: '2021-06-30'),
  product_id: masque.id,
  status: false,
  user: user1)
  order.save!
  i += 1
end


puts "Creating catheter"

i = 0

catheter_picture_list.each do |photo|
 photo = URI.open(photo)
 catheter = Product.new(name: catheter_list[i],
  description: catheter_description[i],
  available_quantity: Faker::Number.between(from: 1, to: 100000),
  unit_price_cents: Faker::Commerce.price(range: 40.0..100.0, as_string: true) + "par unité",
  brand: catheter_brand_name[i],
  average_rating: 1,
  category: "catheter",
  user: user2)
  catheter.picture.attach(io: photo, filename: "product photo", content_type: "images/jpg")
  catheter.save!
  order = Order.new(product_quantity: Faker::Number.between(from: 1, to: 100000),
  shipping_date: Faker::Date.between(from: '2021-06-01', to: '2021-06-08'),
  delivery_date: Faker::Date.between(from: '2021-06-23', to: '2021-06-30'),
  product_id: catheter.id,
  user: user1)
  order.save!
  i += 1

  end



puts "Creating scalpel"

i = 0

scalpel_picture_list.each do |photo|
 photo = URI.open(photo)
 scalpel = Product.new(name: scalpel_list[i],
  description: scalpel_description[i],
  available_quantity: Faker::Number.between(from: 1, to: 100000),
  unit_price_cents: Faker::Commerce.price(range: 3.0..25.0, as_string: true) + "par unité",
  brand: scalpel_brand_name[i],
  average_rating: 1,
  category: "scalpel",
  user: user2)
  scalpel.picture.attach(io: photo, filename: "product photo", content_type: "images/jpg")
  scalpel.save!
  order = Order.new(product_quantity: Faker::Number.between(from: 1, to: 100000),
  shipping_date: Faker::Date.between(from: '2021-06-01', to: '2021-06-08'),
  delivery_date: Faker::Date.between(from: '2021-06-23', to: '2021-06-30'),
  product_id: scalpel.id,
  user: user1)
  order.save!
  i += 1

  end


puts "Creating seringue"

i = 0

seringue_picture_list.each do |photo|
 photo = URI.open(photo)
 seringue = Product.new(name: seringue_list[i],
  description: seringue_description[i],
  available_quantity: Faker::Number.between(from: 1, to: 100000),
  unit_price_cents: Faker::Commerce.price(range: 5.0..25.0, as_string: true) + "par boîte",
  brand: seringue_brand_name[i],
  average_rating: 1,
  category: "seringue",
  user: user2)
  seringue.picture.attach(io: photo, filename: "product photo", content_type: "images/jpg")
  seringue.save!
  order = Order.new(product_quantity: Faker::Number.between(from: 1, to: 100000),
  shipping_date: Faker::Date.between(from: '2021-06-01', to: '2021-06-08'),
  delivery_date: Faker::Date.between(from: '2021-06-23', to: '2021-06-30'),
  product_id: seringue.id,
  user: user1)
  order.save!
  i += 1

  end


puts "Creating bande"

i = 0

bande_picture_list.each do |photo|
 photo = URI.open(photo)
 bande = Product.new(name: bande_list[i],
  description: bande_description[i],
  available_quantity: Faker::Number.between(from: 1, to: 100000),
  unit_price_cents: Faker::Commerce.price(range: 0.3..3.0, as_string: true) + "par unité",
  brand: bande_brand_name[i],
  average_rating: 1,
  category: "bande",
  user: user2)
  bande.picture.attach(io: photo, filename: "product photo", content_type: "images/jpg")
  bande.save!
  order = Order.new(product_quantity: Faker::Number.between(from: 1, to: 100000),
  shipping_date: Faker::Date.between(from: '2021-06-01', to: '2021-06-08'),
  delivery_date: Faker::Date.between(from: '2021-06-23', to: '2021-06-30'),
  product_id: bande.id,
  user: user1)
  order.save!
  i += 1
end
