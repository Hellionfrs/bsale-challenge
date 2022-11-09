# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


db = Mysql2::Client.new(host:'mdb-test.c6vunyturrl6.us-west-1.rds.amazonaws.com', username:'bsale_test',password:'bsale_test',database:'bsale_test')
products = db.query("SELECT * FROM product ORDER BY id ASC").to_a
categories = db.query("SELECT * FROM category ORDER BY id ASC").to_a

categories.each do |category|
  Category.create!(name: category["name"])
end

products.each do |product|
  Product.create!(name: product["name"], url_image: product["url_image"], price: product["price"], discount: product["discount"], category_id:  product["category"])
end