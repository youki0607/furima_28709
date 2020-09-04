FactoryBot.define do
  factory :item do
    name          {}
    image         {}
    explanation   {}
    price         {}
    category_id   {}
    status_id     {}
    postage_id    {}
    user_id       {}
    prefecture_id {}
  end
end