# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "Jaclyn", password: "bellvale")
User.create(username: "Maxwell", password: "elBandito")

Section.create(name:"Exteriors")
Section.create(name:"Grounds")
Section.create(name:"Gardens")
Section.create(name:"External Buildings")
Section.create(name:"Living Rooms")
Section.create(name:"Kitchens")
Section.create(name:"Bedrooms")
Section.create(name:"Bathrooms")
Section.create(name:"Basements")
Section.create(name:"Storage")
Section.create(name:"Decor")
Section.create(name:"Extensions")
