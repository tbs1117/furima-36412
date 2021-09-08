FactoryBot.define do
  factory :item do
    name {"りんご"}
    category_id {2}
    price {"3000"}
    explanation {"りんごです"}
    condition_id {2}
    shipping_id {2}
    prefectures_id {22}
    shipping_days_id {2}

    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/test_image.png'), filename: 'test_image.png')
    end
  end
end
