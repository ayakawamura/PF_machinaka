FactoryBot.define do
  factory :post do
    user_id {"1"}
    body {Faker::Lorem.characters(number:10)}
    address{Faker::Lorem.characters(number:5)}
    longitude{34.690301}
    latitude{135.506671}
  end
end