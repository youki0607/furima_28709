FactoryBot.define do
  factory :user_order do
    # user_id      {}
    # item_id      {}
    postal_code  { '123-4567' }
    prefectures  { 3 }
    city         { '渋谷' }
    house_number { '一丁目' }
    build_number { 'テックビル' }
    phone_number { '08012345678' }

    association :user
    association :item
  end
end
