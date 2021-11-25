FactoryBot.define do
  factory :post do
    user { FactoryBot.build(:user) }
    body { Faker::Lorem.characters(number: 10) }
    address { "北浜" }
    longitude { 34.690301 }
    latitude { 135.506671 }

    after(:create) do |post|
      create_list(:tag_relationship, 1, post: post, tag: create(:tag))
    end
  end
end
