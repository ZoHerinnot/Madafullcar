require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

City.destroy_all
Energy.destroy_all
Mark.destroy_all
Model.destroy_all
Type.destroy_all
Car.destroy_all
User.destroy_all

city = []
mark = []
model = []
type = []
image = ["car1.jpg","car2.jpg", "car2.jpg","car3.jpg","car4.jpg","car5.jpg","car6.jpg"]
user = []



ville = ["Diana","Sava","Itasy","Analamanga","Vakinankaratra","Bongolava","Sofia","Boeny","Betsiboka","Melaky","Alaotra-Mangoro","Atsinanana","Analanjirofo","Amoron'i Mania","Haute Matsiatra","Vatovavy-Fitovinany","Atsimo-Atsinanana","Ihorombe","Menabe","Atsimo-Andrefana","Androy","Anôsy"]


10.times do
	user << User.create(last_name:Faker::Artist.name,first_name:Faker::Name.first_name,email:Faker::Internet.email,password:Faker::Internet.password)
end

22.times do 
	city << City.create(name:ville[rand(21)])
	puts "mande ny city"
end

energie1 = Energy.create(name:"Essence").id
energie2 = Energy.create(name: "Gasoil").id

tab = [energie1,energie2]

10.times do
	mark << Mark.create(name: Faker::Vehicle.make)
	puts "mande ny mark"
end

10.times do 
	model << Model.create(name: Faker::Vehicle.model,mark_id:mark[rand(9)].id)
	puts "mande ny model"
end

10.times do
	type << Type.create(name: Faker::Vehicle.car_type)
	puts "mande ny type"
end

clim = ["oui","non"]
etat = ["Bon Etat","Très bonne etat"]

15.times do |i|
	car = Car.create(
		price:rand(1000000..45000000),
		description:Faker::Vehicle.standard_specs,
		etat:etat[rand(2)],
		year:rand(1900..2019),
		mileage:Faker::Vehicle.mileage,
		number_place:rand(2..32),
		climatisation:clim[rand(2)],
		transmission: Faker::Vehicle.transmission,
		telephone:"0345504476",
		mark_id:mark[rand(9)].id,
		model_id:model[rand(9)].id,
		type_id:type[rand(9)].id,
		energy_id:tab[rand(2)],
		city_id:city[rand(9)].id,
		image_url: image[rand(5)],
		option: "Vente",
		user_id:user[rand(9)].id)
	puts "HACKING GOOGLE #{i*8} %"
end
puts "GOOGLE SUCCEFULLY HACKED"
status = ["disponible","reservé"]
15.times do |i|
	car = Car.create(
		price:rand(1000000..45000000),
		description:Faker::Vehicle.standard_specs,
		etat:etat[rand(2)],
		year:rand(1900..2019),
		mileage:Faker::Vehicle.mileage,
		number_place:rand(2..32),
		climatisation:clim[rand(2)],
		transmission: Faker::Vehicle.transmission,
		telephone:"0345504476",
		mark_id:mark[rand(9)].id,
		model_id:model[rand(9)].id,
		type_id:type[rand(9)].id,
		energy_id:tab[rand(2)],
		city_id:city[rand(9)].id,
		image_url: image[rand(5)],
		option: "Location",
		status: status[rand(2)],
		user_id:user[rand(9)].id)
	puts "HACKING NASA #{i*8} %"
end

puts "NASA SUCCEFULLY HACKED"

