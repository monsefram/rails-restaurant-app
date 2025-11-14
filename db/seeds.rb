require "faker"
Faker::Config.locale = 'fr-CA'


User.destroy_all
Business.destroy_all


admin = User.create!(
  email: "admin@test.com",
  password: "password",
  admin: true
)

user1 = User.create!(
  email: "user1@test.com",
  password: "password",
  admin: false
)


3.times do
  business = user1.businesses.create!(
    name: Faker::Restaurant.name,
    description: Faker::Restaurant.description,
    phone: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    site_web: Faker::Internet.url
  )

  # Un seul menu
  menu = business.menus.create!(title: "Fin de semaine")

  # Quelques items
  3.times do
    menu.items.create!(
      name: Faker::Food.vegetables,
      price: Faker::Commerce.price,
      description: Faker::Food.description
    )
  end
end

