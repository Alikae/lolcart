# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Item.delete_all

20.times do |img|

Item.create(
	id: (img+1),
	title: "picture_#{img+1}",
	description: "lovely picture, ain't it ?",
	price: 9.9,
	image_url: "img#{img+1}.jpg"
	)

end

OrderStatus.delete_all
OrderStatus.create! id: 2, name:"In progress"
OrderStatus.create! id: 2, name:"Placed"
OrderStatus.create! id: 3, name:"shipped"
OrderStatus.create! id: 4, name:"cancelled"
