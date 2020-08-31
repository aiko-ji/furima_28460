FactoryBot.define do
  factory :address do
    association :purchase_id
    postal_code    {"123-4567"}
    delivery_id    {1}
    municipalities {"市区町村"}
    house_numbe    {"番地1-1"}
    phone_number   {11111111111}
    token          {"purchase"}
  end
end