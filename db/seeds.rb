# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

a1 = Artist.create(name: "Prince", bio: "Badass")
a2 = Artist.create(name: "Bowie",bio: "Also badass")

s1 = Song.create(name: "Kiss", artist_id: 1, genre_id: 1)
s2 = Song.create(name: "Ziggy Stardust", artist_id: 2, genre_id: 2)

g1 = Genre.create(name: "Pop")
g2 = Genre.create(name: "Rock")
