FactoryBot.define do
  factory :purchase_do
    association :user
    association :product
      user_id       {1}
      product_id    {1}
  end
end