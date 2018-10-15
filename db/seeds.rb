# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Cidade.create!([
# 	{
# 		nome: "Juazeiro",
# 		uf: "BA"
# 	},
# 	{
# 		nome:"Petrolina",
# 		uf: "PE"
# 	},
# ])

user = User.new(
  username: 'patricksobreira',
  email: 'patricksobreira@gmail.com', 
  password: '123456', 
  password_confirmation: '123456'
)
user.save!