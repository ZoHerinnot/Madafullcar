City.destroy_all
Energy.destroy_all
Mark.destroy_all
Model.destroy_all
Type.destroy_all
Car.destroy_all
Comment.destroy_all
Answer.destroy_all
User.destroy_all
puts "\n\n\n ALL DATA BASE IS SUCCEFULLY DELETED \n\n\n"
#===========================VARIABLE================================
marks = [
		"4 Stroke","Abarth","Ac","Acrea","Acura","Ad Tramontana","Adler","Aiways","Aixam","Al Melling","Aleko","Alfa Romeo","Alke","Alpina","Alpine","Alvis","Amc","Amphicar","Apal","Aptera Motors","Ariel","Armstrong Siddeley","Aro","Artega","Ascari","Aspark","Aston Martin","Auburn","Audi","Austin","Austin Healey","Auto Union","Autobianchi","Auverland","Bee Automobiles","Bellier","Bentley","Berliet","Bertone","Bitter","Bizzarrini","Bmw","Bollore","Bongarini","Booxt","Borgward","Bowler","Brabus","Bremach","Brilliance","Bristol","Brooke Cars","Bugatti","Buick","Burby S","Byd","Cadillac","Caparo","Carbodies","Carbontech","Carver","Casalini","Caterham","Cg","Chatenet","Chenard Et Walcker","Chery","Chevrolet","China Automobile","Chrysler","Citroen","Clenet","Commuter Cars","Connaught","Coste","Courb","Cupra","Dacia","Daewoo","Daf","Daihatsu","Daimler","Dallara","Dangel","Darmont","Datsun","De Fremond","De La Chapelle","De Lorean","De Soto","De Tomaso","Delage","Delahaye","Deronda","Deutsch-bonnet","Devinci","Devon","Dkw","Dodge","Dongfeng","Donkervoort","Donnet","Dr Motor","Ds","Due","Duesenberg","Eagle","Ebro","Edsel","Elv","Erad","Estrima","Exagon Motors","Excalibur","Facel Vega","Fam Automobiles","Faralli & Mazzanti","Farbio","Ferrari","Fiat","Fioravanti","Fisker","Ford","Fornasari","Fso","Gac Gonow","Gac Motor","Geely","Genesis","Gillet","Ginetta","Glas","Gmc","Gme","Grandin","Great Wall","Grecav","Gumpert","Healey","Helem","Heuliez","Hillman","Hispano Suiza Cars","Holden","Hommell","Honda","Hotchkiss","Howmet","Hudson","Humber","Hummer","Hyundai","Imperial","Infiniti","Innocenti","Innotech","Intermeccanica","International","Invicta","Iso","Isorivolta","Isuzu","Italcar","Iveco","Jaguar","Jdm Simpa","Jeep","Jensen","Jiayuan","Karenjy","Kassbohrer Setra","Kia","Koenigsegg","Ktm","Lada","Lagonda","Lamborghini","Lancia","Land Rover","Landwind","Lantana","Laraki","Ldv","Lexus","Ligier","Lincoln","Lister","Little","Lola","London Taxi Company","Loremo","Lotus","Lumeneo","Lynk & Co","Mahindra","Man","Marcadier","Marcos","Martin","Marussia","Maruti","Maserati","Matra","Maybach","Mazda","Mclaren","Mdi","Mega","Melkus","Mercedes","Mercedes-amg","Mercury","Messerschmitt","Mev","Meyers Manx","Mg","Mia Electric","Microcar","Minauto","Mini","Mitsubishi","Mitsubishi Fuso","Mitsuoka","Monteverdi","Morgan","Morris","Mosler","Mpm Motors","Mvs","Mygale","Nanjing","Nash","Neckar","Newteon","Nissan","Noble","Noun Electric","Nsu","Numexia","Oldsmobile","Opel","Osi","Packard","Pagani","Panhard","Panoz","Panther","Pegaso","Perana","Peugeot","Pgo","Piaggio","Pilbeam","Pininfarina","Plymouth","Polestar","Polski","Pontiac","Porsche","Proton","Protoscar","Qoros","Quant","Radical","Realm","Reliant","Renault","Renault Trucks","Rene Bonnet","Reva","Reynard","Riley","Rimac","Rinspeed","Rolls Royce","Ronart","Rosengart","Rover","Russo-baltique","Saab","Saic","Saleen","Salica","Salmson","Samsung","Santana","Saturn","Savel","Saviem","Sbarro","Scania","Scion","Seat","Secma","Shelby","Shuanghuan","Simca","Singer","Sivax","Skoda","Smart","Sms","Sovamag","Spectre","Spyker","Srt","Ssangyong","Ssc","Studebaker","Stutz","Subaru","Sunbeam","Suzuki","Talbot","Talbot Simca","Tata","Teilhol","Tesla","Think","Toyota","Trabant","Triumph","Tvr","Ultima","Umm","Vaillante","Van Hool","Vanden Plas","Vauxhall","Velam","Venturi","Veritas","Vespa","Vinfast","Virago","Volkswagen","Volteis","Volvo","Volvo Trucks","Wallys Car","Westfield","Wiesmann","Willys","Wolseley","Xinyang","Zagato","Zap","Zastava","Zenn","Zenvo"
	]
models = [
	"1-118D","100","100 NX","1007","1008","104","105","106","107","108","1100 S","121","124","127","128","130","145","155","160","180","1800","181","190","2","2.4","200","200 SX","2000","2002","2008","202","203","204","205","206","206+","207","207+","208","220","230","240","25","250","2500","260","2700","280","2800","2CV","3","3.0","3.4","3.8","300","3000 GT","3000 SL","3008","301","305","306","307","308","309","316 compact","320","323","325i","328","330","348","350","350Z","360","370Z","380","400","4007","4008","403","404","405","406","407","45","450","4C","4L","4x4","5","500","500 C","500 L","500 X","5008","504","505","508","508 RXH","525","560","6","600","605","607","612","626","700","75","80","806","807","850","8C","90","A","A 13","A1","A115","A160","A2","A3","A4","A4 ALLROAD","A5","A6","A6 ALLROAD","A7","A8","ACCENT","ACCORD","ACTYON","ADAM","AGILA","Aircross","ALHAMBRA","ALLROAD","ALMERA","ALMERA TINO","ALPINA D3","ALPINA XD3","ALTEA","ALTO","Amarok","AMG GT","AMI","AMPERA","ANTARA","APPIA","AROSA","ASTRA","ASTRA F","ASTRA G","ASTRA H","ASX","ATECA","ATOS","ATOS PRIME","AURELIA","AURIS","AVANTE","Avenis","AVENSIS","AVENSIS VERSO","AVEO","AX","AYGO","AZERA","B-MAX","B12","B2900","B3","BALENO","BARCHETTA","BEL AIR","Berline","BERLINGO","BETA","BIPPER","BLAZER","BORA","BOXER","BRAVA","BRAVO","Break","BT-50","Bus","BX","C 600","C EVOLUTION","C-CROSSER","C-ELYSEE","C-HR","C-MAX","C-ZERO","C1","C10","C15","C180","C2","C220","C230","C240","C3","C3 PICASSO","C3 PLURIEL","C30","C4","C4 CACTUS","C4 PICASSO","C5","C6","C70","C8","Cabriolet","CADDY","CALIBER","CALIBRA","Camion et Poids Lourd","CAPRI","CAPTIVA","CARAVELLE","CARENS","CARISMA","CARNIVAL","CASCADA","Cayenne","CC","CEE D","CELERIO","CERATO","CHARADE","CHARIOT","CHEROKEE","CITIGO","CIVIC","CJ7","CL","CLA","CLASSE A","CLASSE B","CLASSE C","CLASSE CLC","CLASSE CLS","CLASSE E","CLASSE G","CLASSE GL","CLASSE GLK","CLASSE M","CLASSE R","CLASSE S","CLASSE V","CLASSIC X","CLICK","CLIO","CLIO 2","CLIO 3","CLIO 4","CLK","CLUBMAN","COBRA","COLT","COMMANDER","COMMANDO","COMPASS","CONNECT","Cooper","COPEN","CORDOBA","Cordoba Cupra","COROLLA","COROLLA VERSO","CORSA","COUGAR","COURIER","CR-V","CR-Z","Crafter","CROMA","Crossover","CROWN","CRUZE PREMIUM","CRUZE SPORT","CRX","CT","CUBE","CUORE","CUSTOM","CX","CX-3","CX-5","CX-7","D-MAX","DAUPHINE","DEFENDER","Delicat","DELTA","demio","DISCOVERY","DISCOVERY SPORT","DMax","DOBLO","DOKKER","DS","DS3","DS4","DS5","DUSTER","DYANE","E 220","E 90","E-MEHARI","E270","E30","E34","E36","E39","E46","E90","ECLIPSE","ECOSPORT","EDGE","ELAN","ELANTRA","ELDORADO","Elegance","ELISE","ESCALADE","Escape","ESCORT","ESPACE","ESPRIT","EVALIA","EVASION","EX","EXPERT","EXPERT TEPEE","EXPLORER","EXPRESS","F 150","F 250","F 350","F GS","F0","F3R","FABIA","FIESTA","FIGARO","FIGO","FIORINO","FLAMINIA","FLAVIA","FLUENCE","FOCUS","FOCUS C-MAX","Forfour","Fortwo","Fourgon","FOX","FR-V","freelander","FREEMONT","FRONTERA","FULLBACK","FULVIA","FUSION","FX","G","GALAXY","GALLOPER","GENESIS","Gentrax","GETZ","GLA","GLC","GLC COUPE","GLE","GLE COUPE","GLS","GOLF PLUS","GOLF SPORTSVAN","GOLF TYPE I","GOLF TYPE II","GOLF TYPE III","GOLF TYPE IV","GOLF TYPE V","GOLF TYPE VI","Golf Vento","GRAND","GRAND C-MAX","GRAND C4","GRAND ESPACE","GRAND KANGOO","GRAND MODUS","Grand NAVARA","GRAND SCENIC","Grand Starex","GRAND TORINO","GRAND VITARA","GRAND VITARA XL-7","GRANDE PUNTO","GRANDIS","GS","GSA","GT","GT 40","GT-R","GT86","H1","H100","H2","H200","H3","H3T","HARDBODY","Haval","HEALEY","Hiace","HILUX","HR-V","HUNTER","I-MIEV","I10","I20","I3","I30","I40","I8","i90","IBIZA","ID","IDEA","IGNIS","IMPREZA","INSIGHT","INSIGNIA","INTEGRA","ION","IONIQ","IQ","IS","IX20","IX35","IX55","IXO","J5","J9","JAZZ","JENTRA","JETTA","JIMNY","JS","JUKE","JUMPER","JUMPY","JX","KA","KA+","KADJAR","KALOS","KANGOO","KAPPA","KARL","KOLEOS","KORANDO","KUGA","KYRON","L 200","L200","LACETTI","LAGUNA","LANCER","LAND CRUISER","LAND CRUISER SW","LANOS","LANTRA","LATITUDE","LEAF","LEGACY","LEGEND","LEON","LEVORG","LITEACE","LODGY","LOGAN","LS","LUPO","LUXURY","LYBRA","M","M4","MAGENTIS","MARCO POLO","MAREA","MATERIA","MATIZ","MATIZ I","MATIZ II","MATIZ III","MATIZ IV","MATRIX","MAVERICK","MAXIMA","MEGANE","MEGANE RS","Megane Scenic","MEGANE SEDAN","MEGANE Z","MEHARI","MERCURY","MERIVA","MICRA","MII","MINI","Minibus","Minibus 4x4","MIRACLE","ML 420","ML270","MODUS","MOKKA","MOKKA X","MONDEO","Monospace","MONTECARLO","MONTERO","Morning","Moto","MULTIPLA","MURANO","MUSA","Musso","MUSTANG","MX5","NAVARA","NC","NEMO","NEW BEETLE","New Prado","NIRO","Noah","NOTE","NOVA 500","NP 300","NS","NSX","NUBIRA","NX","OCTAVIA","OMEGA","OPIRUS","OPTIMA","OPTIMAX","OUTBACK","OUTLANDER","P6","PACEMAN","PAJERO","PAJERO PININ","PAJERO SPORT","PALIO","PANDA","PARTNER","PARTNER TEPEE","PASSAT","PASSAT CC","PATHFINDER","PATRIOT","PATROL","PHAETON","PHEDRA","PICANTO","PICASSO","PICK UP","PIXO","POLO","POLO 2","POLO 3","POLO 4","POLO 5","Polo Fox","PONY","PRADO","Pregio","PRELUDE","PREMACY","Pride","PRIMERA","PRIUS","PRIUS+","PRO CEE D","PROACE VERSO","PROBE","PULSAR","PUMA","PUNTO","PUNTO EVO","Q2","Q3","Q30","Q5","Q50","Q60","Q7","Q70","QASHQAI","QASHQAI +2","QQ","QUATTRO","QUBO","QX","QX30","QX50","QX60","QX70","QX80","R10","R11","R12","R16","R19","R21","R5","R8","RANGE ROVER","RANGE ROVER EVOQUE","RANGER","RAPID","RAV 4","RC","RCZ","RENEGADE","REXTON","REZZO","RIO","RITMO","ROADSTER","ROCKY","RODIUS","ROOMSTER","RS Q3","RS3","RS4","RS5","RS6","RS7","RX","RX-7","RX-8","S-MAX","S1","S2","S2000","S3","S4","S40","S5","S6","S60","S7","S8","S80","S90","SAFRANE","SAMURAI","SANDERO","SANTA FE","SANTANA S410","SANTANA VITARA","SATELLITE","SAXO","SC","SCENIC","SCIROCCO","SCOUPE","SCUDO","SEDICI","SEICENTO","SERENA","SERIE 1","SERIE 2","SERIE 3","SERIE 3 GT","SERIE 4","SERIE 5","SERIE 5 GT","SERIE 6","SERIE 7","SERIE 8","SHARAN","SIERRA","SIRION","SL","SLC","SLK","SLR","SLS","SM","SONATA","SORENTO","SOUL","SPACE STAR","Spark","SPLASH","SPORTAGE","SPORTERO","SPRINTER","SQ5","SQ7","STAREX","STILO","SUNNY","SUPER 5","SUPERB","SW","SWIFT","SX4","SX4 S-CROSS","symbol","T3","TALENTO","TALISMAN","TEMPRA","TERIOS","TERRACAN","TERRANO","THEMA","THESIS","Tiburon","TIGRA","TIGUAN","TIPO","TITAN","TIVOLI","TOLEDO","TOUAREG","TOURAN","TOURNEO","TRACTION","TRAFIC","TRAJET","TRANSIT","TREVIS","TRIBUTE","TROOPER","TT","TT RS","TTS","TUCSON","Tuscani","TWINGO","TWIZY","ULYSSE","UNO","UP","URBAN CRUISER","URVAN","Utilitaire","V12","V40","V40 CROSS COUNTRY","V44","V50","V60","V60 CROSS","V70","V76","V8","V90","V90 CROSS","V96","VANEO","VECTRA","VEL SATIS","VELOSTER","VENGA","VERACRUZ","VERNA","VERSO","VERSO-S","VIANO","vigo","VISA","Visto","VITARA","VITO","voleex","VOYAGER","Wagon R","WAGONEER","WILLYS","WIND","WRANGLER","X-BOW","X-TRAIL","X1","X2","X3","X4","X5","X6","XANTIA","XG","XM","XSARA","Y10","Y60","Y61","Yangzi","YARIS","YARIS VERSO","YETI","YPSILON","Z1","Z3","Z4","Z8","ZAFIRA","ZAFIRA TOURER","ZOE","ZX",
	"ZZ1"
	]
types = ["4x2","4x4","Berline","Break","Bus","Coupé","Crossover","Fourgon","Minibus","Minibus 4x4","Monospace","Utilitaire"]
image = ["car1.jpg","car2.jpg", "car2.jpg","car3.jpg","car4.jpg","car5.jpg","car6.jpg"]
villes = ["Antananarivo","Antsiranana","Fianarantsoa","Mahajanga","Toamasina","Toliary"]
energies = ["Diesel","Essence","Ethanol","Eléctrique","Hybrid","LPG Autogas"]
clims = ["Oui","Non"]
etats = ["Impéccable","Très bon état","Bon état","Etat moyen","Mauvaise état","Très mauvaise état"]
status = ["Disponible","Reservé"]
prices = [10000000,15000000, 60000000, 150000000, 350000000, 153500000, 600000000]
pricesLocation = [10000,15000, 60000, 150000, 350000, 153500, 600000]
kms = [50000,100000,250000,300000,10000,305000,500000]
transmissions = ["Automatique","Manuelle","Semi-automatique"]
#===========================USER================================
User.create(last_name:"google",
	first_name:"map",
	email:"google@map.com",
	password:"google@map.com")
User.create(last_name:"yahoo",
		first_name:"yes",
		email:"yahoo@yes.com",
		password:"yahoo@yes.com")
10.times do |i|
	User.create(last_name:Faker::Artist.name,
		first_name:Faker::Name.first_name,
		email:Faker::Internet.email,
		password:Faker::Internet.password)
	system("clear")
	puts "User creating / #{(((i.to_f+1)*100)/10).to_s[0..4]}%"
end
puts "\n\n\n ALL USERS IS SUCCEFULLY CREATED 100 % \n\n\n"
system("sleep 2")
#===========================CITY================================
villes.length.times do |i|
	City.create(name:villes[i])
	system("clear")
	puts "City creating / #{(((i.to_f+1)*100)/villes.length).to_s[0..4]}%"
end
puts "\n\n\n ALL CITIES IS SUCCEFULLY CREATED 100 % \n\n\n"
system("sleep 2")
#===========================ENERGIE=============================
energies.length.times do |i|
	Energy.create(name:energies[i])
	system("clear")
	puts "Energy creating / #{(((i.to_f+1)*100)/energies.length).to_s[0..4]}%"
end
puts "\n\n\n ALL ENERGIES IS SUCCEFULLY CREATED 100 % \n\n\n"
system("sleep 2")
#=============================MARK==============================
marks.length.times do |i|
	Mark.create(name: marks[i])
	system("clear")
	puts "Mark creating / #{(((i.to_f+1)*100)/marks.length).to_s[0..4]}%"
end
puts "\n\n\n ALL MARKS IS SUCCEFULLY CREATED 100 % \n\n\n"
system("sleep 2")
#=============================MODEL=============================
models.length.times do |i|
	Model.create(name: models[i])
	system("clear")
	puts "Model creating / #{(((i.to_f+1)*100)/models.length).to_s[0..4]}%"
end
puts "\n\n\n ALL MODELS IS SUCCEFULLY CREATED 100 % \n\n\n"
system("sleep 2")
#=============================TYPES=============================
types.length.times do |i|
	Type.create(name: types[i])
	system("clear")
	puts "Type creating / #{(((i.to_f+1)*100)/types.length).to_s[0..4]}%"
end
puts "\n\n\n ALL TYPES IS SUCCEFULLY CREATED 100 % \n\n\n"
system("sleep 2")
#==========================CAR EN VENTE=========================
25.times do |i|
	car = Car.create(
		price: prices[rand(7)],
		description:"Conduire cette voiture est le plus beau rêve que vous puissiez realiser dans votre vie. Vous pouver l'acheter directement",
		etat:etats[rand(6)],
		year:rand(1900..2019),
		mileage:kms[rand(7)],
		number_place:rand(2..32),
		climatisation:clims[rand(2)],
		transmission:transmissions[rand(3)],
		telephone:"0345504476",
		image_url:image[rand(5)],
		option:"Vente",
		mark_id:rand(Mark.first.id .. Mark.last.id),
		model_id:rand(Model.first.id .. Model.last.id),
		type_id:rand(Type.first.id .. Type.last.id),
		energy_id:rand(Energy.first.id .. Energy.last.id),
		city_id:rand(City.first.id .. City.last.id),
		user_id:rand(User.first.id .. User.last.id)
	)
	system("clear")
	puts "Car creating / #{(((i.to_f+1)*100)/25).to_s[0..4]}%"
end
puts "\n\n\n ALL CARS IS SUCCEFULLY CREATED 100 % \n\n\n"
system("sleep 2")
#=========================CAR EN LOCATION===========================
17.times do |i|
	car = Car.create(
		price: pricesLocation[rand(7)],
		description: "Conduire cette voiture est le plus beau rêve que vous puissiez realiser dans votre vie. Vous pouver l'alouer directement",
		etat:etats[rand(6)],
		year:rand(1900..2019),
		mileage:kms[rand(7)],
		number_place:rand(2..32),
		climatisation:clims[rand(2)],
		transmission:transmissions[rand(3)],
		telephone:"0345504476",
		image_url:image[rand(5)],
		option:"Location",
		status: status[rand(2)],
		mark_id:rand(Mark.first.id .. Mark.last.id),
		model_id:rand(Model.first.id .. Model.last.id),
		type_id:rand(Type.first.id .. Type.last.id),
		energy_id:rand(Energy.first.id .. Energy.last.id),
		city_id:rand(City.first.id .. City.last.id),
		user_id:rand(User.first.id .. User.last.id)
	)
	system("clear")
	puts "Car creating / #{(((i.to_f+1)*100)/25).to_s[0..4]}%"
end
puts "Car creating / 100%"
puts "\n\n\n ALL CARS IS SUCCEFULLY CREATED 100 % \n\n\n"
system("sleep 2")
system("clear")
puts "\n\n\n THE FOLLOWING DATABASES ARE SUCCESSFULLY CREATED:\n\t- #{City.count} City\n\t- #{Energy.count} Energy\n\t- #{Mark.count} Mark\n\t- #{Model.count} Model\n\t- #{Type.count} Type\n\t- #{Car.count} Car\n\t- #{User.count} User\n\n\n"
#===========================END=================================
