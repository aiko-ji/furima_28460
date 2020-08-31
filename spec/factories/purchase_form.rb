FactoryBot.define do
  factory :purchase_form do
    association :user
    association :product
    postal_code    {"123-4567"}
    delivery_id    {1}
    municipalities {"市区町村"}
    house_number    {"番地1-1"}
    phone_number   {11111111111}
    token          {"purchase"}
    user_id       {1}
    product_id    {1}
  end
end