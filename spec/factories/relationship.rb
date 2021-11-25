FactoryBot.define do
  factory :relationship do
    follower { FactoryBot.create(:user) }
    followed { FactoryBot.create(:another_user) }
  end
end
