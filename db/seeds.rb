# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

#categories= ['Bilim ve Teknoloji', 'Otomobil', 'Oyun', 'Tasarım Genel']

  #categories.each  do |category |
  #Category.find_or_create_by!(name: category)
  #puts "- #{category} kategori oluşturuldu."
  #end
