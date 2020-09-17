FactoryBot.define do
  factory :user do
    nickname              { 'キン肉マン' }
    email                 { Faker::Internet.email }
    password { Faker::Internet.password(min_length: 6) + "a1"}
    password_confirmation { password }
    family_name           { '中沢' }
    first_name            { '優貴' }
    family_name_kana      { 'ナカザワ' }
    first_name_kana       { 'ユウキ' }
    birthday              { Faker::Date.birthday }
  end
end
