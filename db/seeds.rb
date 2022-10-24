# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create Users

user1 = User.create!(name: "Rafael Guzman", email: "rafa@mail.com", password: "123456", admin: true)
user2 = User.create!(name: "Dangelo Arravillaga", email: "dan@mail.com", password: "123456", admin: true)
user3 = User.create!(name: "Juan Perez", email: "juan@mail.com", password: "123456", admin: false)

# Create Products

product1 = Product.create!(name: "Mario Invitation", description: "This is a Mario invitation", price: 5.60, image: "https://i.etsystatic.com/37907793/r/il/831e14/4234640242/il_794xN.4234640242_4nf4.jpg", quantity: 10, category: "Invitations")
product2 = Product.create!(name: "Mickey Invitation", description: "This is a Mickey invitation", price: 5.60, image: "https://i.etsystatic.com/37907793/r/il/773417/4225929056/il_794xN.4225929056_f1uw.jpg", quantity: 10, category: "Invitations")
product3 = Product.create!(name: "Spiderman Invitation", description: "This is a Spiderman invitation", price: 5.60, image: "https://i.etsystatic.com/37907793/r/il/4d719a/4273576251/il_794xN.4273576251_mln7.jpg", quantity: 10, category: "Invitations")
product4 = Product.create!(name: "Uno Party Bundle", description: "Water Bottle + Chip Bag + Juice Pouch + Cake Topper + Cupcake Topper + Candy Bar Wrapper.", price: 5.60, image: "https://i.etsystatic.com/37907793/r/il/b75d81/4225519012/il_794xN.4225519012_qjsk.jpg", quantity: 10, category: "Party Bundles")
product5 = Product.create!(name: "Minnie Party Bundle", description: "Water Bottle + Chip Bag + Juice Pouch + Cake Topper + Cupcake Topper + Candy Bar Wrapper.", price: 5.60, image: "https://i.etsystatic.com/37907793/r/il/361ae7/4215130144/il_794xN.4215130144_a23o.jpg", quantity: 10, category: "Party Bundles")

b1 = BuySell.create!(user: user1, product: product1)
b2 = BuySell.create!(user: user1, product: product2)
b3 = BuySell.create!(user: user1, product: product3)
b4 = BuySell.create!(user: user1, product: product4)
b5 = BuySell.create!(user: user1, product: product5)
b6 = BuySell.create!(user: user2, product: product1)
BuySell.create!(user: user2, product: product2)
BuySell.create!(user: user2, product: product4)
BuySell.create!(user: user2, product: product5)