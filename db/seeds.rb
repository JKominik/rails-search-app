# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Artist.create(name: "")

names = [
"Beyonce",
"Justin Beider", 
"Tiesto",
"Jay-Z",
"Ray Chareles", 
"Wu Tang Clan",
"Beartooth",
"Brittney Spears", 
"Gap Band",
"Sam Smith",
"Lindsey Sterling",
"Pantera",
"Micheal Jackson", 
"A Tribe Called Quest",
"Dragonforce",
"Steve Miller Band",
"Horse the band",
"Justin Timberlake",
"Alan Jackson"
]

names.each do |x|
	Artist.create(name: x)
end


['Universal',
 'Virgin',
 'Atlantic',
 'Geffen'
].each do |name|
  Label.find_or_create_by name: name
end

['The Best of The Doors',
 'Waiting for the Sun',
 'Dark Side of the Moon',
 'Hot Fuss',
 'Battle Born',
 'Who Are You',
 'Live At Leeds',
 'No More Rain',
 'The X Files'
].each do |name|
  Album.find_or_create_by( name: name )
end