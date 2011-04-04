# Blueprints for Cucumber features
require 'machinist/active_record'

User.blueprint do
  email { Faker::Internet.email }
  password { 'secret1234' }
  password_confirmation { object.password }
end

Thing.blueprint do
  description { Faker::Lorem.sentence }
  uri { "http://" + Faker::Internet.domain_name + "/some/thing" }
end

List.blueprint do
  description { Faker::Lorem.sentence }
  things(3)
end

