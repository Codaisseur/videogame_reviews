FactoryGirl.define do
  factory :game do
    title { Faker::Name.name }
    cover_image { Faker::Avatar.image }
    category
  end
end
