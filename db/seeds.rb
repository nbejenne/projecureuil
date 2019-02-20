# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database'



Reaction.destroy_all
Invitation.destroy_all
Membership.destroy_all
Picture.destroy_all
Album.destroy_all
User.destroy_all

#-------------------------------------------------------------------------------#

puts 'Creating Users'

user_attributes = [
  {
    firstname: 'Michel',
    lastname: 'Rodriguez',
    avatar: 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/z3mmznydhd0y6e9tcwi1.jpg',
    email: 'michel@michel.fr',
    password: 'azerty'
  },
   {
    firstname: 'Nicolas',
    lastname: 'Béjenne',
    avatar: 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/z3mmznydhd0y6e9tcwi1.jpg',
    email: 'nicolas.bejenne@gmail.com',
    password: 'azerty'
  },
  {
    firstname: 'Paul',
    lastname: 'Pogba',
    avatar: 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/z3mmznydhd0y6e9tcwi1.jpg',
    email: 'lapioche@lapioche.fr',
    password: 'azerty'
  }
]

User.create!(user_attributes)

puts 'Created Users'

#-------------------------------------------------------------------------------#

puts 'Creating Albums'

album_attributes = [
  {
    name: 'Tournoi de pétanque de Marmande'
  },
  {
    name: 'Ski avec la famille'
  },
  {
    name: "Bassin d'Arcachon 2018"
  }
]

Album.create!(album_attributes)

puts 'Created Albums'

#-------------------------------------------------------------------------------#

puts 'Creating Memberships'

membership_attributes = [
  {
    user: User.first,
    album: Album.first,
    admin: true
  },
  {
    user: User.second,
    album: Album.second,
    admin: true
  },
  {
    user: User.third,
    album: Album.third,
    admin: true
  },
]

Membership.create!(membership_attributes)

puts 'Created Memberships'

#-------------------------------------------------------------------------------#

puts 'Creating pictures'

picture_attributes = [
  {
    album: Album.first,
    membership: Membership.first,
    picture_url: 'https://res.cloudinary.com/dpxhpp1yf/image/upload/v1548868331/zpnieoqxmrlj1k7vsqmr.jpg'
  },
  {
    album: Album.first,
    membership: Membership.second,
    picture_url: 'https://res.cloudinary.com/dpxhpp1yf/image/upload/v1548868331/zpnieoqxmrlj1k7vsqmr.jpg'
  },
  {
    album: Album.first,
    membership: Membership.third,
    picture_url: 'https://res.cloudinary.com/dpxhpp1yf/image/upload/v1548868331/zpnieoqxmrlj1k7vsqmr.jpg'
  },
  {
    album: Album.first,
    membership: Membership.second,
    picture_url: 'https://res.cloudinary.com/dpxhpp1yf/image/upload/v1548868331/zpnieoqxmrlj1k7vsqmr.jpg'
  },
   {
    album: Album.second,
    membership: Membership.first,
    picture_url: 'https://res.cloudinary.com/dpxhpp1yf/image/upload/v1548868331/zpnieoqxmrlj1k7vsqmr.jpg'
  },
  {
    album: Album.second,
    membership: Membership.second,
    picture_url: 'https://res.cloudinary.com/dpxhpp1yf/image/upload/v1548868331/zpnieoqxmrlj1k7vsqmr.jpg'
  },
  {
    album: Album.second,
    membership: Membership.third,
    picture_url: 'https://res.cloudinary.com/dpxhpp1yf/image/upload/v1548868331/zpnieoqxmrlj1k7vsqmr.jpg'
  },
  {
    album: Album.second,
    membership: Membership.second,
    picture_url: 'https://res.cloudinary.com/dpxhpp1yf/image/upload/v1548868331/zpnieoqxmrlj1k7vsqmr.jpg'
  },
  {
    album: Album.third,
    membership: Membership.first,
    picture_url: 'https://res.cloudinary.com/dpxhpp1yf/image/upload/v1548868331/zpnieoqxmrlj1k7vsqmr.jpg'
  },
  {
    album: Album.third,
    membership: Membership.second,
    picture_url: 'https://res.cloudinary.com/dpxhpp1yf/image/upload/v1548868331/zpnieoqxmrlj1k7vsqmr.jpg'
  },
  {
    album: Album.third,
    membership: Membership.third,
    picture_url: 'https://res.cloudinary.com/dpxhpp1yf/image/upload/v1548868331/zpnieoqxmrlj1k7vsqmr.jpg'
  },
  {
    album: Album.third,
    membership: Membership.second,
    picture_url: 'https://res.cloudinary.com/dpxhpp1yf/image/upload/v1548868331/zpnieoqxmrlj1k7vsqmr.jpg'
  },
]

Picture.create!(picture_attributes)

puts 'Created Pictures'












