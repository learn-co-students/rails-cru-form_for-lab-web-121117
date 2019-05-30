# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
ofb = Artist.create(name: "Once and Future Band", bio: "Contemporary prog rock band from Oakland")
bd = Artist.create(name: "Blackdown", bio: "Owner of Keysound Recordings")
kvu = Artist.create(name: "King Vision Ultra", bio: "Geng.")
ggm = Artist.create(name: "Gabriel Garzon-Montano", bio: "Musical love-child of Prince and D'Angelo")
md = Artist.create(name: "Mumdance", bio: "grime-techno-hardcore fusionist")

prog = Genre.create(name: "progressive rock")
soul = Genre.create(name: "soul")
noise_rap = Genre.create(name: "noise-rap")
rollage = Genre.create(name: "130 rollage")
mumdance = Genre.create(name: "mumdance")

ofb_songs = ["How Does It Make You Feel?", "Rolando", "Hide & Seek", "I'll Be Fine", "Tell Me Those Are Tears Of Joy"]
bd_songs = ["Those Moments", "Abundance", "Halcyon Skies", "Heavy", "Envision (Emergence)"]
kvu_songs = ["HELLEARTH", "Grey"]
ggm_songs = ["Pour Maman", "6 8", "My Balloon", "Everything Is Everything", "The Game", "Bombo Fabrika"]
md_songs = ["Turbo Mitzi VIP", "Take Time", "Legion", "Proto", "Big Slug"]

ofb_songs.each do |song|
  Song.create(name: song, artist: ofb, genre: prog)
end

bd_songs.each do |song|
  Song.create(name: song, artist: bd, genre: rollage)
end

kvu_songs.each do |song|
  Song.create(name: song, artist: kvu, genre: noise_rap)
end

ggm_songs.each do |song|
  Song.create(name: song, artist: ggm, genre: soul)
end

md_songs.each do |song|
  Song.create(name: song, artist: md, genre: mumdance)
end