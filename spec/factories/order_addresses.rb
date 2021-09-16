FactoryBot.define do
  factory :order_address do
    postal_code { '123-4567' }
    prefectures_id { 2 }
    city { '世田谷区' }
    house_number { '1-1' }
    building_name { '東京ハイツ' }
    telephone_number { '09012341234' }
  end
end
