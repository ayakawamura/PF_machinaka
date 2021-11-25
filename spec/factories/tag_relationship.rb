FactoryBot.define do
  factory :tag_relationship do
    association :post
    association :tag
  end
end
