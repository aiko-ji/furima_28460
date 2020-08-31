FactoryBot.define do
  factory :purchase do
    association :user
    association :product
    postal_code    {123-4567}
    delivery_id    {0}
    municipalities {"市区町村"}
    house_numbe    {"番地1-1"}
    phone_number   {11111111111}
    token          {"purchase"}
    # user_id        {0}
    # product_id     {0}
  end
end