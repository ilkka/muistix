# Blueprints for Cucumber features
require 'machinist/active_record'

User.blueprint do
  email { Faker::Lorem.words(1).first.downcase }
  password { Faker::Lorem.words(1).first.downcase }
end
