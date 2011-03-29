# Blueprints for Cucumber features
require 'machinist/active_record'

User.blueprint do
  email { Faker::Internet.email }
  password { 'secret1234' }
  password_confirmation { password }
end

Plan.blueprint do
  description { Faker::Lorem.sentence }
end

Step.blueprint do
  objective { Faker::Lorem.sentence }
  uri { "http://" + Faker::Internet.domain_name + "/some/thing" }
  plan
end
