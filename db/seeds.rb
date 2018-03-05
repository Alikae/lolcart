# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



10.times do |img|

Item.create(
	title: "picture_#{img}",
	description: "lovely picture, ain't it ?",
	price: 9.9,
	image_url: "img#{img}"
	)

end