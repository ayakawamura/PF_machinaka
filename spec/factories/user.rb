FactoryBot.define do
  factory :user, class: "User" do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    password { "111111" }
    introduction { Faker::Lorem.characters(number: 30) }
    icon_id { File.open('./app/assets/images/park1.jpg') }
  end

  factory :another_user, class: "User" do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    password { "111111" }
    introduction { Faker::Lorem.characters(number: 30) }
    icon_id { File.open('./app/assets/images/park1.jpg') }
  end
end
