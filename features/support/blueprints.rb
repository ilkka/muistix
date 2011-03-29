# Blueprints for Cucumber features
require 'machinist/active_record'

User.blueprint do
  email { Faker::Internet.email }
  password { 'secret1234' }
  password_confirmation { password }
end
