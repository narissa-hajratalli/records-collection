# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create(email: "test@test.com", username: "test1", password: "123")
Artist.create(name: "Taylor Swift", hot_100_hits: 1)
Artist.create(name: "Ed Sheeran", hot_100_hits: 3)
Artist.create(name: "Chainsmokers", hot_100_hits: 3)

Record.create(title: "Lover", release_year: 2019, cover_image: "https://upload.wikimedia.org/wikipedia/en/c/cd/Taylor_Swift_-_Lover.png", artist_id: 1)
Record.create(title: "Reputation", release_year: 2006, cover_image: "https://images-na.ssl-images-amazon.com/images/I/61fqizgZeZL.jpg", artist_id: 1)
Record.create(title: "X", release_year: 2011, cover_image: "https://images-na.ssl-images-amazon.com/images/I/713MsE%2BfMKL._SL1200_.jpg", artist_id: 2)
Record.create(title: "Divide", release_year: 2017, cover_image: "https://images-na.ssl-images-amazon.com/images/I/61CDjPeGhhL._SY355_.jpg", artist_id: 2)
Record.create(title: "World War Joy", release_year: 2019, cover_image: "https://upload.wikimedia.org/wikipedia/en/5/51/Memories...Do_Not_Open.jpg", artist_id: 3)
Record.create(title: "Memories Do Not Open", release_year: 2017, cover_image: "https://images.genius.com/2e93ba112debfa3e09ef6609160a7940.939x939x1.jpg", artist_id: 3)