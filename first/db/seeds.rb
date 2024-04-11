# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

username_1 = User.create(username: "Rafa Camp")
username_2 = User.create(username: "Katie")
username_3 = User.create(username: "Clarence")

artwork_1 = Artwork.create(artist_id: username_1.id, title: 'Mona Lisa & Her Sister', image_url: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.harpersbazaar.com%2Fculture%2Fart-books-music%2Fa13074458%2Fmodels-recreate-iconic-paintings%2F&psig=AOvVaw3q0HxgzbLBU86F65jJYJuX&ust=1712947468164000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCPCso-DouoUDFQAAAAAdAAAAABAE')
artwork_2 = Artwork.create(artist_id: username_2.id, title: 'The Son of Man', image_url: 'https://sep.turbifycdn.com/ty/cdn/madisonartshop/most-famous-paintings-17.jpg?t=1678352599&')
artwork_3 = Artwork.create(artist_id: username_3.id, title: 'blablabla', image_url: 'random string')

share_1 = ArtworkShare.create(artwork_id: 1, viewer_id: 2)
share_2 = ArtworkShare.create(artwork_id: 2, viewer_id: 3)
share_3 = ArtworkShare.create(artwork_id: 3, viewer_id: 1)

