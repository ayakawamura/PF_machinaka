FactoryBot.define do
  factory :post_image do
    association :post
    image_id { Faker::Lorem.characters(number: 30) }
  end
end
