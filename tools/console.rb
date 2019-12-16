require_relative '../config/environment.rb'

a1 = Artist.new(name: "Monet", years_experience: 20)
a2 = Artist.new(name: "Manet", years_experience: 30)
a3 = Artist.new(name: "Picasso", years_experience: 25)
a4 = Artist.new(name: "Fernand Leger", years_experience: 32)
a5 = Artist.new(name: "Rembrandt", years_experience: 15)
a6 = Artist.new(name: "David Hockney", years_experience: 55)

g1 = Gallery.new(name: "National Portrait Gallery", city: "London")
g2 = Gallery.new(name: "Louvre", city: "Paris")
g3 = Gallery.new(name: "Tate Modern", city: "London")
g4 = Gallery.new(name: "The Met", city: "NYC")

p1 = Painting.new(title: "deck", price: rand(1000000), artist: (Artist.all.sample), gallery: (Gallery.all.sample) )
p2 = Painting.new(title: "the", price: rand(1000000), artist: Artist.all.sample, gallery: Gallery.all.sample )
p3 = Painting.new(title: "halls", price: rand(1000000), artist: Artist.all.sample, gallery: Gallery.all.sample )
p4 = Painting.new(title: "with", price: rand(1000000), artist: Artist.all.sample, gallery: Gallery.all.sample )
p5 = Painting.new(title: "boughs", price: rand(1000000), artist: Artist.all.sample, gallery: Gallery.all.sample )
p6 = Painting.new(title: "of holly", price: rand(1000000), artist: Artist.all.sample, gallery: Gallery.all.sample )
p7 = Painting.new(title: "falalalalala", price: rand(1000000), artist: Artist.all.sample, gallery: Gallery.all.sample )
p8 = Painting.new(title: "lalalala", price: rand(1000000), artist: Artist.all.sample, gallery: Gallery.all.sample )
p9 = Painting.new(title: "tis the season", price: rand(1000000), artist: Artist.all.sample, gallery: Gallery.all.sample )
p10 = Painting.new(title: "to be jolly", price: rand(1000000), artist: Artist.all.sample, gallery: Gallery.all.sample )

binding.pry

puts "Bob Ross rules."
