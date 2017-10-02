# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Venue.destroy_all
User.destroy_all
Request.destroy_all


uhall = Venue.create(name: "U Street Music Hall")

bob = User.create(username: "bobB", name: "Bob Butane", password_digest: "1234", email: "bob@bob.com", )
poo = User.create(username: "pooBear", name: "Winne The Poo", password_digest: "bigBear", email: "winnie@poo.com")
jim = User.create(username: "jimboSlice", name: "Jim Bo", password_digest: "jojojimbo", email: "jim@bo.com")
lou = User.create(username: "LouieLou", name: "Louie CK", password_digest: "lololoulo", email: "lou@boo.com")

burial Request.create(name: "Burial", genre: "Electronic", soundcloud: "https://soundcloud.com/burial", facebook: "https://www.facebook.com/burialfans/", user_id: lou)
rob_hood Request.create(name: "Robert Hood", genre: "Techno", soundcloud: "https://soundcloud.com/roberthood", facebook: "https://www.facebook.com/RobertHoodFloorplan", number_votes: 0)
